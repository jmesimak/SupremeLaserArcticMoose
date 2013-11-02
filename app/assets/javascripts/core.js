var joinData = [];

$(document).ready(function() {
    $(".fs_panel").hide();
    $(".fs_panel").first().show();
    $(".panel_button").each(function() {
        $(this).css("opacity", $(this).attr("opa"));
        if ($(this).css("opacity") < 0.3) {
            $(this).css("opacity", 0.2);
        }
    });

    $(".panel_button").bind("click", function() {
        joinData.push($(this).attr("value"));
        $(this).parent().hide();
        $(this).parent().next().show();

        if(joinData.length == 2) {
            if (joinData[1] == 1) {
                $(".pm").hide(0);
            } else {
                $(".am").hide(0);
            }
        }

        if (joinData.length >= 3) {
            $("#dayslot").val(joinData[0]);
            $("#dayhalf").val(joinData[1]);
            $("#timeslot").val(joinData[2]);

            $("#new_membership").submit();
        }
    });
});

