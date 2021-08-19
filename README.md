# Rocket Elevators - Mobile & DevOps Week

## www.rocketelevators.xyz

### What is new?

A new server instance (Ubuntu) from AWS including necessary databases (PG and MySql), and deployment of measurement tools including the implementation of New Relic APM and the implementation of Google Analytics both of which render data probed from the Rocket Elevators website.

### How to use

```bash
Website
For security purposes, access is granted only to the three graders:
mathieu.houde@codeboxx.biz
patrick.thibault@codeboxx.biz
david.amyot@codeboxx.biz
password for all: #XPD!THjf2MDk7#d

Monitoring accounts
Account access were sent to each of the above emails in the form of email invites.
```

### Features
- New server instance (ubuntu) from AWS
- New MySQL connection from AWS
- New Postgres connection from AWS
- Deployment of New Relic Application Monitoring tools
- Deployment of Google Analytics 
- Updates to the connection strings of other projects

### Updated connection strings
- http://www.rocketelevators.xyz (website)
- https://rocketapis.herokuapp.com/graphql (graphql)
- https://rocketapis.azurewebsites.net/ (rest api)
- https://rocketportaladmin.azurewebsites.net/ (customer portal)

### Notes
- Thank you

### previews:
#### new Ubuntu vm setup via Amazon Lightsail
![](https://lh3.googleusercontent.com/pw/AM-JKLXXVmfCfXQ7dU0F5ItYInLwmBGSIy3eUnYLjRZN7resWmqwgvcoprlOWzjfAOoHsEhS-V_YCj0cYUq3Gdh1LUMQuE196a-cAV69fcMWTQI0eHsUJ78Og8BEVwCH4gpQEqqknDuRbZ1_8rcMMdutqERf=w1033-h1026-no?authuser=0)

#### new MySql database via Amazon Lightsail
![](https://lh3.googleusercontent.com/pw/AM-JKLVuPQGBNisJMsWIkjc0FTkt8pGZxvyLSTAbrooiDyhI82dnUefeMHkJ5IflluSfZBNULOaPjvVUB0d20R_CmghyW7KTDByZaBMoG6jXrScYo0wKraQL7NBYeCuhegxHwvdggGAY6QRcg8aO159DgBFR=w1082-h868-no?authuser=0)

#### confirmation of MySql database setup
![](https://lh3.googleusercontent.com/pw/AM-JKLXKG1H1GHbrDl-QEWBNa3X4sYj7R0DiV22l2i_npkxUIMbcLTpJl-3qYYxY2GUJhAz1Pn63jrv_5YwLGegSnMpGaTR417I8sF0jjlDqsVVFXCEXhwSW65gan2a4wDtyY0Nu5SW7clv_zcW5uNsvgST9=w1759-h1026-no?authuser=0)

#### new PostgreSQL database via Amazon Lightsail
![](https://lh3.googleusercontent.com/pw/AM-JKLVRQ2BPTi_OjJj-dcFzG3DdrIqLQLxHQRg79SyK43EmB308pvbCOnlcfABFG7hW5wMurDNucY9KrhQW76nHxuCFVFRzWWHVPbfZMpS43Z8uQQcxx-jiz3yA6R6NxclXWPGLEe1EcMCuQJTwWJ_mo6Oz=w1127-h875-no?authuser=0)

#### confirmation of PostgreSQL database setup
![](https://lh3.googleusercontent.com/pw/AM-JKLXz715_jDQruntc5-CXxMEnZEWxbJ0LmmNlIl0QoqMsxnX18RM8rzcRvPvK5Tz32Z3fcNoIll59VSgmfLnlMMaJYymsHBTOqHfQ93h6p09LU77UFpKljb89TLexZhfiJAjZ3OCs_ZQIZ1I8kiZDe2Zh=w1920-h676-no?authuser=0)

#### Google Analytics monitoring
![](https://lh3.googleusercontent.com/pw/AM-JKLW-JBdPWYqghnJq7zCSUSNPRvURD71A1giU5_iweSPm0VJNDJZeEc_iMo_9iMfgfEEVDVHz8oAdwRdGsvnwl8yOf1RBXNjYc0XJUxb9YGt_zndm8jJ1ZWrXBkss5SkpwJH8Zrq7LZ1N8F_QY_Ze1ePI=w1293-h974-no?authuser=0)

#### New Relic monitoring 
![](https://lh3.googleusercontent.com/pw/AM-JKLVZ1buJr1yuuf6DMY6HY1r_eBEXgfCNNM9isqvFieKd_IIhZ-fGKA93NvQNfHUl8fxzyN8YJfbLcbKuuy7sXscHVaRPbGACIEniGaG69HJ1ZHrM1NTXeWQU-7Dhv1og_i6EkYYRbLcjyu_EkD5xIU_G=w924-h1026-no?authuser=0)

#### New Relic monitoring 2
![](https://lh3.googleusercontent.com/pw/AM-JKLVFI0da6VKr34u6kL3emU2d7zuxwSGAQ8SJcO4fXST9-tovMmF1Ai5xQ5xv77755kWlVtNNhPVgtq2LcoGHePC0eSQtTI3rLaz2R-JDMAGO6pePqgEufQ2VCLwTgdvtYZoIPgNAATTqPW-nPmG8TuIH=w1441-h1026-no?authuser=0)

#### new IP set in production deploy file
![](https://lh3.googleusercontent.com/pw/AM-JKLWtfbLNn-IwoHW4G6Gm1FwYB5kN120VpRFBVEVhIOnGjCKuTUrumsULi_1YLdK_-2ObgwaVbWSpv_VrNvjYQF3lJGszmEAUL9cEcw53zUGWYtbX696FG1SeBy9k8_xO-xWprnzXAqk-V49UFh2dZPYD=w755-h206-no?authuser=0)

#### new IP set in cloudflare
![](https://lh3.googleusercontent.com/pw/AM-JKLUFiSWw__qKgarNlsRkpJcMmtpSIfREDlMnJtJaQAcxIJcHFrAMLdnhxe1QK6kvKD_f9gdrdLh81B8wDVq2Dos42aKTiZfowRwCbnmnx4DeaPQuViksh32yYmyl4yz9AMbb2YCX9WuJOz-IqI6pfU29=w1022-h76-no?authuser=0)

#### new server and DB links setup in heroku for graphql project
![](https://lh3.googleusercontent.com/pw/AM-JKLWwnUjwd_wJzZJSxfCHkfrHKcsO1hhenbY4V_KLIbqsBnxsQDzz14BYjA37yHDBt4c53VhQ3y7cFETZSDWRT1E0JHdkOQLCVkhBOt0Bnuzq2CoCx2hF67ti7uavwRgbwLaWlGLCJrbkeEpLRPmBpK2E=w1157-h1026-no?authuser=0)

#### confirmation of new DB links working for graphql
![](https://lh3.googleusercontent.com/pw/AM-JKLXPHQgxfcTY9bjt3rcEJAwdbRuk5je7c4A-txscsHXTBgYqGJDTc4r0ixi72K3uoU7zXFmfMt5DjAyu_qU9t3hy0wXVwrymfmz30y-FfZd-JDGgzG30chEtyyebybl-31gbW_43OyznSxP0MCumPxSp=w1513-h929-no?authuser=0)

#### new connection strings setup in customer portal
![](https://lh3.googleusercontent.com/pw/AM-JKLUTXrUJlg2qH5gVKlTinalvFlbi6KGNWdyvOycSVTXVyZtwuL1_-DVjtfwsxerGacUTm8te7AgkhnohhMwuUoxeEBPIO7aIPLfWie_nEpNl5Zh86eKeWYvhzV-8okarntveNYhb6I4vXVNOUKuUV4Im=w1314-h308-no?authuser=0)

#### new connection strings setup in REST API project
![](https://lh3.googleusercontent.com/pw/AM-JKLWtIYyQrmDqWOBCTSGq-vIVThxkeAtM7QRMpw-zAEb79uo924HXawnZN408_34JLWeX1LzFkukS1dWgMsUgKFjBktA6jd_o6lKJ0OFeXZe84X1ZndZ1KWjB2obfRodFsRmd-H4qbbndUJsA8RWevsNf=w1920-h450-no?authuser=0)


----------------


<Details>
<summary>TDD & SECURITY WEEK</summary>

### What is new?

A new content delivery module in the information system to enable media content placement in the company's elevators. Specifically, a stock ticker of the day stream was created which would come from a RapidAPI source but for testing stub requests were implemented. TDD was done using RSpec with the file located in the lib directory with its respective test file in the RSpec directory. Additional tests were also included in the existing information system located in the RSpec directory.

### How to use

```bash
rspec --format doc --color
```

### Location
There are five files where tests are located overall.
- Lib/
    - elevator_media.rb
- spec/
  - controllers/
    - interventions_controller_spec.rb
  - models/
    - user_spec.rb
  - customer_spec.rb
  - elevator_media_spec.rb

### Notes
It may take about 30-60 seconds for the test to start after initiating the rspec command. Below is the preview of the successful tests, if you see red, please double check your rails env in rails_helper.rb and that the database in the env you're using has data in it as the interventions controller tests require existing data. You'll also need to include a devise config line in the same file. See both rails_helper.rb and spec_helper.rb to check it matches yours in case of any failures.

#### test preview:
![](https://lh3.googleusercontent.com/pw/AM-JKLU8FJQvbsScu90uUQ-r4TGHkxSsfvsj5Sul2sauDRKaHdmlTB5r4nUWJw9aWkorS29rzFkyfriwPO9S3cpBD7VFfzcG7zhIIDo-Lfq5MiNGmWMzzr1YJBPNqOYweeA031qGPBZOHcNPBkvtIHtxT5zb=w804-h687-no)

### New Gems installed and used

```bash
group :development, :test do
  gem 'rspec-rails', '~> 4.1.0'
  gem 'webmock', '~> 3.13'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', '~> 5.0'
end

gem 'uri'
gem 'net-http', '~> 0.1.1'
gem 'openssl', '~> 2.2'
gem 'devise-security'
```
### Other Notes
If for whatever reason after seeding you need to login to the back office via localhost, the new password is '#XPD!THjf2MDk7#d' with email of Mathieu, Patrick, or David A's codeboxx emails. Also, please note cap production deploy was not run, so changes are in this repo only and not on production. The security part of this week's project was submitted seperately as a Google Doc.

----------------
</details>

<Details>
<summary>CONSOLIDATION WEEK</summary>

### Website: www.rocketelevators.xyz

<Details>
<summary>CONSOLIDATION WEEK - INTERVENTION FORM</summary>

### What is new?

A way to manage interventions which includes a new form at /interventions/new and a new MySQL table where submissions are saved to. Only employees can access the form.

### How to use

You can go to the website (link above) and login with your email using password: 'codeboxx', or use 'nicolas.genest@codeboxx.biz' with password 'codeboxx'. Click on "Interventions" in the menu bar or go directly to: www.rocketelevators.xyz/interventions/new

### Notes
Please note NOT ALL CUSTOMERS HAVE A BUILDING. If you come across a customer with no buildings to select, it means they don't have a service contract with us, or are late with their service bill. In which case, please select another customer with buildings to see the cascading effect.

#### form preview:
![](https://lh3.googleusercontent.com/pw/AM-JKLWH76S9M6Z2kTtsMq97fxmB77bmSeS_gkOjXifFN0bqh9FpFp1A0sutx8W3mlPbTo6RmF1RhrkYZEggGE7E3vBkPZIL1uUFqsWQ1s5H5GZH_p36sxARUAseieXufao6kLttl4EAnfZPa7yidKp-qf5O=w1224-h735-no)

![](https://lh3.googleusercontent.com/pw/AM-JKLWPy_uvIuW6HscTlVpM-acWDA_rBNh_MZH3zutWObxQ15P_ediGRPj63XSpppr0bDEi_JNSXLxa9_mHcl2uQAa_b8f1gtGUk5ugDPvFrzl_7eCi_v6YFFbSF9xO2Uii9JYwlby3eePB9ve_MmYFYvGd=w1175-h789-no)

![](https://lh3.googleusercontent.com/pw/AM-JKLWMgU515bl65zGG90tp1ZCMhG2G1K2DYQI-KHQxgNS2ZSs9Lt5tspDL0SZ7cWlpuEhnTut1Vgc6rvzLKGB5TtQDWCaRZhN7VK-5sn-P5OsonWbftec5M2UcItxGfshJK923GDHoaFOicaWE0yhElT3i=w1172-h778-no)

![](https://lh3.googleusercontent.com/pw/AM-JKLXTpolu-tSzIXKWwlxrfEbB4-6uqUgwe6fdS6NQuGpkqTKesuunOFux5-1-_u6XRRDuXb6tvo5IYTlgaxSaI0QC6WeUT8sll23DtIAiiYsyaK5LjrInfvwxM8JDesoTThhimjLgc2dWMMw1ORJivRmy=w1168-h828-no)

![](https://lh3.googleusercontent.com/pw/AM-JKLUMK5GUepPmUq2QJlGJU2kHTPygF1JhtOdXvuZdC76ySKubNmwImveE7MqtnRWCmE7YjmkFGUhOLrl_RGX821vqn4FTqSfrwgyDyZapJFx1M0kfnoFkSg1pPM8OOEVNMdkX02NVpLVPmRBb-uNKpQdy=w1190-h878-no)

![](https://lh3.googleusercontent.com/pw/AM-JKLVW_ueaL058qv2kzbqYRttTEOSdtQbOf_Ks417WQpZD29LTD3JnuD1BYVDoR4cdxvGogYMYpv2Is3vzHy71EIBzE2ygxd8S7_IVTB1oeEf9555ILwrPSd2MQHhRFYE9CK91kq_WO8yFKvMeyT3vLeRZ=w1355-h1306-no)

### New Gems installed and used

```bash
None
```
### Other Notes
Form previews were taken in local environment. Names of customers and their associated building/battery/column/elevator ids my be different than what's currently up.

----------------
</details>

<Details>
<summary>CONSOLIDATION WEEK - SLACK INTEGRATION</summary>

### What is new?
Notifications via Slack when new interventions are created.

### How to use
In the 'elevator_operations' channel, a bot is setup to automatically send a notification when a new intervention form is filled out.

#### previews:
![](https://lh3.googleusercontent.com/pw/AM-JKLWr1wxmy_qilXLNJMGyz5RmPlfLTS1IJksY5b9zt2LkPS4lQc0uCYEkaxMGR4l4uuuIezWEawIQ0R4qVv1Gbc0fwSuzfNAnSK6g0BiTEm0rKhyGUB_os-WdcjLBGzvVf0avlqLXWovZN43rQ53IQENw=w801-h99-no)

![](https://lh3.googleusercontent.com/pw/AM-JKLXbMTyp_1X-H6FKw0wGa5C5bEGH06tFLlgIntokxG9t8f7BumrErVQlgQ-EznVwrjye2Ipu8uDKcJvr6-vEnHLXMbalukAVdCC2XQThbGg9rPglOPAFyjxp2XIS-6Lwr0wFetvMGfFYI-CowTRT0L72=w830-h97-no)

### New Gems installed and used

```bash
gem "slack-notifier"
```
### Other Notes
No additional notes.

----------------
</details>

<details>
<summary>CONSOLIDATION WEEK - REST API</summary>

Link to repo: [Rocket Elevators Foundation - REST API](https://github.com/starshyp/Rocket-Elevators-Foundation-REST-API)
</details>
</Details>

<details>
<summary>PREVIOUS WEEKS </summary>
Ruby version : ruby 2.6.6

Rails version: Rails 5.2.6

Important Gems: Cancancan, rails-Admin, Devise, Rolify, Pg & Multiverse.

Databases: MySQL(RayanTaing) & PostgreSQL(RayanTaing_datawarehouse_development).

General MySQL terminal commands concerning the RayanTaing database:
- ```rails db:drop db:create db:migrate db:seed```

General PostgreSQL terminal commands concerning the RayanTaing_datawarehouse_development database:
- ```DB=datawarehouse rails db:drop db:create db:migrate db:seed```

MySQL Tables: Users, Employees, Roles, Quotes, Leads, Address, Customers, Buildings, BuildingDetails,
Battery, Columns, Elevators and AddressGeocode.

PostgreSQL Tables: FactQuotes, FactContact, FactElevator & DimCustomers

Seeding: 21 users(with the password of "codeboxx") & employees, 25 quote forms (these quotes are for the purpose of testing the database, the numbers inside do not respect the normal calculations), 10 leads(ContactUs forms),
100 adresses, 50 customers, 50 building details, 50 buildings; each buildings has 1
battery  (Total : 50 battery), each battery has 3 columns(Total : 150 columns) & each column has 4
elevators (Total : 600 elevators) and a random number of building details between 0 and 5.

Admin of the site: All of the employees of Rocket Elevators havec the admin privileges so it is possible
to have access to the Back Office by connecting to their accounts. We used the email adress of nicolas.genest@codeboxx.biz with password codeboxx to test the website.

Back Office ONLY visible to admins.

Data transfer from MySQL to PostgreSQL is done through a rake task : - ```rails dwh:import```

For all the data transfers and making the right relationships for the transfers, the ":import" rake task
has been used.

For the three .SQL files, you can use this syntax while in the "current" folder of "ColbyB" in the Codeboxx server : psql codeboxx -h codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com -d RayanTaing_datawarehouse_development -f QuoteRequest.sql

# Whats new (API week)
Admins Dashboard
- Audio briefing provided By IBM Watson
- Maps For geolocating our "Customers" provided by Gmaps4rails

Contact Us sections sends to
- ZenDesk API a Question Ticket
- Dropbox API with a provided attached file
- SendGrid API with a Thank you Email to the user

Updating Elevator Status to ``"Intervention"`` sends a message to
- Slack Rocket Elevator Server in #elevator_operations
- Sends a SMS to a Targeted number set in ``"application.yml"`` using Twilio API

To try the code, you have to start the server log into the Rocket Elevators website and click on  “back office” in the top navigation bar. You would then have to select the elevators tab in the navigation section and select a random elevator. The final step would be to edit the status and change it to “intervention”.

More Info
<Details>
<summary>SendGrid API</summary>

### What is SendGrid?

SendGrid provides a cloud-based service that assists businesses with email delivery.

### How to use

Submit a contact form using your email address.

### New gems installed

```bash
gem 'sendgrid-ruby'
gem "figaro"
```

### Implementation
*app/controllers/leads_controller.rb*
```ruby
mail = Mail.new
mail.from = Email.new(email: 'rocketelevator312890+sendgrid@gmail.com')
personalization = Personalization.new
personalization.add_to(Email.new(email: @lead.Email))
#personalization.add_to(Email.new(email: params[:Email]))
personalization.add_dynamic_template_data({
    "FullName" => @lead.FullName,
    "ProjectName" => @lead.ProjectName
    })
mail.add_personalization(personalization)
mail.template_id = 'd-a1170dbad8924f9ba0f038014445e76b'

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
begin
  response = sg.client.mail._("send").post(request_body: mail.to_json)
rescue Exception => e
  puts e.message
end
puts response.status_code
puts response.body
#puts response.parsed_body
puts response.headers
```
*Email preview when someone submits a contact form*

![](https://uc8cb2b4ed7396b17340c665177b.previews.dropboxusercontent.com/p/thumb/ABPWglemUAyJeYg5R4wsWnEPWWyZ_R5Mf0D8LTUad5TP3QOxl0icFttmBloIHpUGQPAphIjaK80oy92F0HG-Owz85QGBEUkBrfYKy_b8JSDZJM4o_uLsoYAZ9co0hXEcciCGDakierbPbciD_1UkxiPUGeZAjGM39zl4he1F1jlkdX4NS5J0qnOLACS_6vPkzeKCNU-eeR9y5YYahxWaFGQf3GhM7FBiFwkEdn7pEKhsB7AMirT7iYIksp-110x5yNfY5eHzZWK4nCoj3AP3gFyiPv2MchbWSPoWaFycXvRL_o1UpHv2Dr3wOSHKFyYd3L-KEl2aZIsdYcxv-zJ49kzz-9WSj_IozXXDqFL7_y6Y49plbrYV3Pgkq56Ovs-Cd_ThA4HpOIv4UJIg7M8LsNEW/p.png)

### Notes
No notes.
</details>

<Details>
<summary>IBM Watson (Text to Speech) API</summary>

### What is IBM Watson (Text to Speech)?

It is an API cloud service that enables you to convert written text into natural-sounding audio in a variety of languages and voices within an existing application.

### How to use

Login to the backoffice with nicolas.genest@codeboxx.biz with password 'codeboxx', click on the 'Audio Brief' tab and click the button to play. Please wait 2-6 seconds for the audio to process and play after clicking the button.

### New gems installed

```bash
gem 'ibm_watson', '~> 2.1', '>= 2.1.1'
gem "figaro"
```

### Implementation
*app/controllers/watson_controller.rb*
```ruby
class WatsonController < ApplicationController
  require "ibm_watson"
  require "ibm_watson/text_to_speech_v1"
  include IBMWatson

  def refreshaudio
    ################## IBM WATSON ##################
    authenticator = IBMWatson::Authenticators::IamAuthenticator.new(
      apikey: ENV['TEXT_TO_SPEECH_APIKEY'],
    )
    text_to_speech = IBMWatson::TextToSpeechV1.new(
      authenticator: authenticator
    )
    text_to_speech.service_url = ENV['TEXT_TO_SPEECH_URL'] #/v1/workspaces/
    
    user = Employee.where(user_id: current_user.id).first

    greeting = "Greetings #{user.FirstName} #{user.LastName}. There are currently #{Elevator.count} elevators deployed in #{Building.count} buildings of your #{Customer.count} customers. Currently, #{Elevator.where.not(:Status => "on").count} elevators are not in Running Status and are being serviced. You currently have #{Quote.count} quotes awaiting processing. You currently have #{Lead.count} leads in your contact requests. #{Battery.count} are deployed across #{Address.distinct.count(:City)} cities."

    #puts JSON.pretty_generate(text_to_speech.list_voices.result)
    #File.open("app/assets/audio/watson.mp3", "wb") do |audio_file|
      response = text_to_speech.synthesize(
        text: greeting,
        accept: "audio/mp3",
        voice: "en-GB_JamesV3Voice"
      ).result
      send_data response
    #end
    ################## IBM WATSON ##################
  end

end
```
*lib/watson.rb*
```ruby
module RailsAdmin
  module Config
    module Actions
      class Watson < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :root? do
          true
        end

        register_instance_option :breadcrumb_parent do
          nil
        end

        register_instance_option :route_fragment do
          'watson.html.erb'
        end

        register_instance_option :link_icon do
          'icon-play'
        end

        register_instance_option :statistics? do
          true
        end

      end
    end
  end
end
```
*config/locales/en.yml*
```yml
en:
  admin:
    actions:
      watson:
        title: "IBM Watson"
        menu: "Audio Brief"
        breadcrumb: "Audio Brief"
```

*app/views/rails_admin/main/watson.html.erb*
```javascript
<%= audio_tag "/watson/refreshaudio", class: "audio-play" %>
<p class="btn btn-primary audioButton">Play Briefing</p>

<%= javascript_tag "window._token = '#{form_authenticity_token}'" %>

<script>

    $(".audioButton").on("click", function() {
        $(".audio-play")[0].currentTime = 0;
        return $(".audio-play")[0].play();
    });
</script>
```
*config/routes,rb*
```ruby
get "/watson/refreshaudio", to: "watson#refreshaudio"
```


*Audio briefing in backend preview*
![](https://ucecc5d66f6dbfb17ccf6a128f94.previews.dropboxusercontent.com/p/thumb/ABMEkIJruupz7Z3agPjY-9q1NIijZGxo4fXJKRCGD6jlQSYpD0bso9CsbYeNgXPkj1W8lpC6DUEcbFTsuCxK2gvZe-dXzJAWR8M1Sfn-vgKfmV6VbZFlbK2BYoISFypcXiI_-QXxFTBTladbLfvhUftY1LTI7uKANnZzc7yWJ3zF-pznmPdc-7I9O65ccIOEiTfZot8sG8HxuySFbHdzBLajwkHiDrDcOHCQfzFDDg7Q4YSrG8G7wNHsmpo3rEgQGmUNLbXkjTlQsPzByleApsBJNr7ur5gkP7DOJYA2uu3QROCo6V5W7GeqF8r_reCSOJr6jgqDWfCL05oIRC1Q6UQszRwzD2nZD8but788KL-vduNfHzjozrmVTl7mMp4cqyqwS7O3xEGEtQWJSfXQloB_/p.png)

### Notes
After pressing the 'Play Briefing' button, give it 5 seconds to process and play. Also, after updating the count of a resource (leads, quotes, etc.), go back to the main 'Dashboard' then back to the audio tab and wait 30 seconds before playing the audio again for it to update with the new figures.
</details>

</details>
