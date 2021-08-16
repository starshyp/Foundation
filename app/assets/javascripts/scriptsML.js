"use strict";

/* To run this sample, install:
npm install microsoft-cognitiveservices-speech-sdk
*/
var sdk = require("microsoft-cognitiveservices-speech-sdk");
var fs = require("fs");

// Note: Change the locale if desired.
const profile_locale = "en-us";

/* Note: passphrase_files and verify_file should contain paths to audio files that contain \"My voice is my passport, verify me.\"
You can obtain these files from:
https://github.com/Azure-Samples/cognitive-services-speech-sdk/tree/fa6428a0837779cbeae172688e0286625e340942/quickstart/javascript/node/speaker-recognition/verification
*/ 
const passphrase_files = ["myVoiceIsMyPassportVerifyMe01.wav", "myVoiceIsMyPassportVerifyMe02.wav", "myVoiceIsMyPassportVerifyMe03.wav"];
const verify_file = "myVoiceIsMyPassportVerifyMe04.wav";
/* Note: identify_file should contain a path to an audio file that uses the same voice as the other files, but contains different speech. You can obtain this file from:
https://github.com/Azure-Samples/cognitive-services-speech-sdk/tree/fa6428a0837779cbeae172688e0286625e340942/quickstart/javascript/node/speaker-recognition/identification
*/
const identify_file = "aboutSpeechSdk.wav";

const key_var = ENV['ML_KEY'];
if (!key_var) {
    throw new Error('please set/export the following environment variable: ' + key_var);
}
var subscription_key = key_var;

const region_var = ENV['ML_REGION'];
if (!region_var) {
    throw new Error('please set/export the following environment variable: ' + region_var);
}
var region = region_var;

const ticks_per_second = 10000000;

/* From: https://github.com/Azure-Samples/cognitive-services-speech-sdk/blob/fa6428a0837779cbeae172688e0286625e340942/quickstart/javascript/node/speaker-recognition/verification/dependent-verification.js#L8
*/

function GetAudioConfigFromFile (file)
{
    let pushStream = AudioInputStream.createPushStream();
    createReadStream(file).on("data", function(arrayBuffer) {
        pushStream.write(arrayBuffer.buffer);
    }).on("end", function() {
        pushStream.close();
    });
    return AudioConfig.fromStreamInput(pushStream);
}

async function TextDependentVerification(client, speech_config)
{
    console.log ("Text Dependent Verification:\n");
    var profile = null;
    try {
        // Create the profile.
        profile = await new Promise ((resolve, reject) => {
            client.createProfileAsync (VoiceProfileType.TextDependentVerification, profile_locale, result => { resolve(result); }, error => { reject(error); });
        });
        console.log ("Created profile ID: " + profile.profileId);
        await AddEnrollmentsToTextDependentProfile(client, profile, passphrase_files);
        const audio_config = GetAudioConfigFromFile(verify_file);
        const recognizer = new SpeakerRecognizer(speech_config, audio_config);
        await SpeakerVerify(profile, recognizer);
    }
    catch (error) {
        console.log ("Error:\n" + error);
    }
    finally {
        if (profile !== null) {
            console.log ("Deleting profile ID: " + profile.profileId);
            await new Promise ((resolve, reject) => {
                client.deleteProfileAsync (profile, result => { resolve(result); }, error => { reject(error); });
            });
        }
    }
}

async function AddEnrollmentsToTextDependentProfile(client, profile, audio_files)
{
    for (var i = 0; i < audio_files.length; i++) {
        console.log ("Adding enrollment to text dependent profile...");
        const audio_config = GetAudioConfigFromFile (audio_files[i]);
        const result = await new Promise ((resolve, reject) => {
            client.enrollProfileAsync (profile, audio_config, result => { resolve(result); }, error => { reject(error); });
        });
        if (result.reason === ResultReason.Canceled) {
            throw(JSON.stringify(VoiceProfileEnrollmentCancellationDetails.fromResult(result)));
        }
        else {
            console.log ("Remaining enrollments needed: " + result.privDetails["remainingEnrollmentsCount"] + ".");
        }
    };
    console.log ("Enrollment completed.\n");
}

async function SpeakerVerify(profile, recognizer)
{
    const model = SpeakerVerificationModel.fromProfile(profile);
    const result = await new Promise ((resolve, reject) => {
        recognizer.recognizeOnceAsync (model, result => { resolve(result); }, error => { reject(error); });
    });
    console.log ("Verified voice profile for speaker: " + result.profileId + ". Score is: " + result.score + ".\n");
}

async function TextIndependentVerification(client, speech_config)
{
    console.log ("Text Independent Verification:\n");
    var profile = null;
    try {
        // Create the profile.
        profile = await new Promise ((resolve, reject) => {
            client.createProfileAsync (VoiceProfileType.TextIndependentVerification, profile_locale, result => { resolve(result); }, error => { reject(error); });
        });
        console.log ("Created profile ID: " + profile.profileId);
        await AddEnrollmentsToTextIndependentProfile(client, profile, [identify_file]);
        const audio_config = GetAudioConfigFromFile(passphrase_files[0]);
        const recognizer = new SpeakerRecognizer(speech_config, audio_config);
        await SpeakerVerify(profile, recognizer);
    }
    catch (error) {
        console.log ("Error:\n" + error);
    }
    finally {
        if (profile !== null) {
            console.log ("Deleting profile ID: " + profile.profileId);
            await new Promise ((resolve, reject) => {
                client.deleteProfileAsync (profile, result => { resolve(result); }, error => { reject(error); });
            });
        }
    }
}

async function AddEnrollmentsToTextIndependentProfile(client, profile, audio_files)
{
    for (var i = 0; i < audio_files.length; i++) {
        console.log ("Adding enrollment to text independent profile...");
        const audio_config = GetAudioConfigFromFile (audio_files[i]);
        const result = await new Promise ((resolve, reject) => {
            client.enrollProfileAsync (profile, audio_config, result => { resolve(result); }, error => { reject(error); });
        });
        if (result.reason === ResultReason.Canceled) {
            throw(JSON.stringify(VoiceProfileEnrollmentCancellationDetails.fromResult(result)));
        }
        else {
            console.log ("Remaining audio time needed: " + (result.privDetails["remainingEnrollmentsSpeechLength"] / ticks_per_second) + " seconds.");
        }
    }
    console.log ("Enrollment completed.\n");
}

async function TextIndependentIdentification(client, speech_config)
{
    console.log ("Text Independent Identification:\n");
    var profile = null;
    try {
        // Create the profile.
        profile = await new Promise ((resolve, reject) => {
            client.createProfileAsync (VoiceProfileType.TextIndependentIdentification, profile_locale, result => { resolve(result); }, error => { reject(error); });
        });
        console.log ("Created profile ID: " + profile.profileId);
        await AddEnrollmentsToTextIndependentProfile(client, profile, [identify_file]);
        const audio_config = GetAudioConfigFromFile(passphrase_files[0]);
        const recognizer = new SpeakerRecognizer(speech_config, audio_config);
        await SpeakerIdentify(profile, recognizer);
    }
    catch (error) {
        console.log ("Error:\n" + error);
    }
    finally {
        if (profile !== null) {
            console.log ("Deleting profile ID: " + profile.profileId);
            await new Promise ((resolve, reject) => {
                client.deleteProfileAsync (profile, result => { resolve(result); }, error => { reject(error); });
            });
        }
    }
}

async function SpeakerIdentify(profile, recognizer)
{
    const model = SpeakerIdentificationModel.fromProfiles([profile]);
    const result = await new Promise ((resolve, reject) => {
        recognizer.recognizeOnceAsync (model, result => { resolve(result); }, error => { reject(error); });
    });
    console.log ("The most similar voice profile is: " + result.profileId + " with similarity score: " + result.score + ".\n");
}

async function main() {
    const speech_config = SpeechConfig.fromSubscription(subscription_key, region);
    const client = new VoiceProfileClient(speech_config);

    await TextDependentVerification(client, speech_config);
    await TextIndependentVerification(client, speech_config);
    await TextIndependentIdentification(client, speech_config);
    console.log ("End of quickstart.");
}
main();