//     // Window.onload = function(){
//     //     Intervention.reset();
//     // }
//
//     // $('#building_id').empty();
//     $(document).ready(function(){
//         // $("#customer_id").append('<option>Select a Company</option>');
//         // $("#customer_id").empty();
//         // sessionStorage.setItem("Select a Company", $("#customer_id select").first().val());
//         // $('#customer_id select').change(function () {
//         //     sessionStorage.setItem("Select a Company", $("#customer_id select").first().val());
//         //     location.reload();
//         // });
//
//         $("#intervention_building_id").hide();
//         $("#intervention_battery_id").hide();
//         $("#intervention_column_id").hide();
//         $("#intervention_elevator_id").hide();
//         // $("#description").hide();
//     });
//
//     // $("#building_id").prop("disabled", true);
//     $('#intervention_customer_id').on('change', function() {
//     $('#intervention_building_id').show()
//     $("#intervention_building_id").empty();
//     $("#intervention_battery_id").empty();
//     $("#intervention_column_id").empty();
//     $("#intervention_elevator_id").empty();
//     // let customer_id = $("#intervention_customer_id option:selected").val();
//     customer_id = $(this).val();
//     console.log(customer_id)
//     $.ajax({
//     cache: false,
//     url: '/refreshbuildings',
//     type: 'GET',
//     dataType: 'json',
//     data: {
//     id: customer_id
// },
//     success: function (data) {
//     console.log(data)
//     console.log('TEST/////////////')
//     // $.each (data, (index, value) =>
//
//     // $('#building_id').append($(
//     //     '<option>',
//     //     {value: data.id},
//     //     '</option>'
//     // )),
//     //)
//
//     //var json = jQuery.parseJSON(data);
//
//     /////////// ALTERNATIVE ///////////
//     //https://fool-dev.com/how-to-create-a-dependent-dropdown-in-ruby-on-rails/
//     var data = data["buildings"]
//     console.log(data)
//
//     $("#intervention_building_id").empty();
//     $("#intervention_building_id").append('<option>Select Building</option>');
//     // $("#building_id").append(new Option('Select Building'));
//     for (var i = 0; i < data.length; i++) {
//     $("#intervention_building_id").append('<option value="' + data[i]["id"] + '">' + data[i]["id"] + '</option>');
//     // $("#building_id").append('<option value="' + data[i]["id"] + '">' + data[i]["id"] + '</option>');
//     // $("#building_id").append('<option value="' + data["buildings"][i].id + '">' +  {value: data.id} + '</option>');
//     // },
// }
//     ////////////////////////////////////
// }
// })
//
//     // if ($('#building_id').val() != ''){
//     //     $('#battery_id').show()
//     // } else if ($('#battery_id').val() != '') {
//     //     $('#column_id').show()
//     //   } else ($('#column_id').val() != ''); {
//     //       $('#elevator_id').show()
//     // }
//
//     // $("#refreshgallery").click(function(){
//     //     $('#picturegallery').empty(); //remove all child nodes
//     //     var newOption = $('<option value="1">test</option>');
//     //     $('#picturegallery').append(newOption);
//     //     $('#picturegallery').trigger("chosen:updated");
//     // });
//
//     // $.ajax({
//     // url:'/watson/refreshaudio',
//     // type:'POST',
//     // dataType:'json',
//     // data:{
//     // authenticity_token: window._token
//     // }
//     // success:function(data){
//     // 	alert("success!!!")
//     // 	console.log(data)
//     // },
//     // error:function(data){
//     // 	alert("failed!!!")
//     // 	console.log(data)
//     // }
//     // });
//     // $(".audio-play")[0].currentTime = 0;
//     // return $(".audio-play")[0].play();
//     // else $("audio-play").pause();
// });
//
//     //////////// BATTERY ////////////
//     $('#intervention_building_id').on('change', function() {
//     $('#intervention_battery_id').show()
//     $("#intervention_battery_id").empty();
//     $("#intervention_column_id").empty();
//     $("#intervention_elevator_id").empty();
//     //let building_id = $("#building_id option:selected").val();
//     building_id = $(this).val();
//     console.log(building_id)
//     $.ajax({
//     cache: false,
//     url: '/refreshbatteries',
//     type: 'GET',
//     dataType: 'json',
//     data: {
//     id: building_id
// },
//     success: function (data) {
//     console.log(data)
//     console.log('TEST/////////////')
//     // $.each (data, (index, value) =>
//
//     // $('#building_id').append($(
//     //     '<option>',
//     //     {value: data.id},
//     //     '</option>'
//     // )),
//     //)
//
//     //var json = jQuery.parseJSON(data);
//
//     /////////// ALTERNATIVE ///////////
//     //https://fool-dev.com/how-to-create-a-dependent-dropdown-in-ruby-on-rails/
//     var data = data["batteries"]
//     console.log(data)
//
//     $("#intervention_battery_id").empty();
//     $("#intervention_battery_id").append('<option>Select Battery</option>');
//     for (var i = 0; i < data.length; i++) {
//     $("#intervention_battery_id").append('<option value="' + data[i]["id"] + '">' + data[i]["id"] + '</option>');
//     // $("#building_id").append('<option value="' + data["buildings"][i].id + '">' +  {value: data.id} + '</option>');
//     // },
// }
//     ////////////////////////////////////
// }
// })
// });
//
//     //////////// COLUMN ////////////
//     $('#intervention_battery_id').on('change', function() {
//     $('#intervention_column_id').show()
//     $("#intervention_column_id").empty();
//     $("#intervention_elevator_id").empty();
//     //let building_id = $("#building_id option:selected").val();
//     battery_id = $(this).val();
//     console.log(battery_id)
//     $.ajax({
//     cache: false,
//     url: '/refreshcolumns',
//     type: 'GET',
//     dataType: 'json',
//     data: {
//     id: battery_id
// },
//     success: function (data) {
//     console.log(data)
//     console.log('TEST/////////////')
//     // $.each (data, (index, value) =>
//
//     // $('#building_id').append($(
//     //     '<option>',
//     //     {value: data.id},
//     //     '</option>'
//     // )),
//     //)
//
//     //var json = jQuery.parseJSON(data);
//
//     /////////// ALTERNATIVE ///////////
//     //https://fool-dev.com/how-to-create-a-dependent-dropdown-in-ruby-on-rails/
//     var data = data["columns"]
//     console.log(data)
//
//     $("#intervention_column_id").empty();
//     $("#intervention_column_id").append('<option>Select Column</option>');
//     for (var i = 0; i < data.length; i++) {
//     $("#intervention_column_id").append('<option value="' + data[i]["id"] + '">' + data[i]["id"] + '</option>');
//     // $("#building_id").append('<option value="' + data["buildings"][i].id + '">' +  {value: data.id} + '</option>');
//     // },
// }
//     ////////////////////////////////////
// }
// })
// });
//
//     //////////// ELEVATOR ////////////
//     $('#intervention_column_id').on('change', function() {
//     $('#intervention_elevator_id').show()
//     $("#intervention_elevator_id").empty();
//     //let building_id = $("#building_id option:selected").val();
//     column_id = $(this).val();
//     console.log(column_id)
//     $.ajax({
//     cache: false,
//     url: '/refreshelevators',
//     type: 'GET',
//     dataType: 'json',
//     data: {
//     id: column_id
// },
//     success: function (data) {
//     console.log(data)
//     console.log('TEST/////////////')
//     // $.each (data, (index, value) =>
//
//     // $('#building_id').append($(
//     //     '<option>',
//     //     {value: data.id},
//     //     '</option>'
//     // )),
//     //)
//
//     //var json = jQuery.parseJSON(data);
//
//     /////////// ALTERNATIVE ///////////
//     //https://fool-dev.com/how-to-create-a-dependent-dropdown-in-ruby-on-rails/
//     var data = data["elevators"]
//     console.log(data)
//
//     $("#intervention_elevator_id").empty();
//     $("#intervention_elevator_id").append('<option>Select Elevator</option>');
//     for (var i = 0; i < data.length; i++) {
//     $("#intervention_elevator_id").append('<option value="' + data[i]["id"] + '">' + data[i]["id"] + '</option>');
//     // $("#building_id").append('<option value="' + data["buildings"][i].id + '">' +  {value: data.id} + '</option>');
//     // },
// }
//     ////////////////////////////////////
// }
// })
// });