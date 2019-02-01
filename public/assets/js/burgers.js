$(function () {
    $(".create-form").on("submit", function (event) {
        event.preventDefault();
        var newBurger = {
            burger_name: $("#bu").val().trim()
        };


        $.ajax("/api/burgers", {
            type: "POST",
            data: newBurger
        }).then(
            function () {
                console.log("created new burger");
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });

    $(".change-devoured").on("click", function (event) {
        var burger = { id: $(this).data("id") };


        // Send the PUT request.
        $.ajax("/api/burgers/" + burger.id, {
            type: "PUT",
            data: { devoured: true }
        }).then(
            function () {
                // Reload the page to get the updated list
                location.reload();
            }
        );
    });

});

