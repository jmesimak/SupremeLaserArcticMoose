var joinData = [];

$(document).ready(function() {
    $(".fs_panel").hide();
    $(".fs_panel").first().show();
    $(".panel_button").css('opacity', $(this).attr("opa"));

    $(".panel_button").bind("click", function() {
        joinData.push($(this).attr("value"));
        console.log(joinData);
        $(this).parent().hide();
        $(this).parent().next().show();

        if (joinData.length >= 3) {
            $("#dayslot").val(joinData[0]);
            $("#dayhalf").val(joinData[1]);
            $("#timeslot").val(joinData[2]);

            $("#new_membership").submit();
        }
    });
});

