<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Autocomplete</title>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(document).ready(function(){
            $("#species").autocomplete({

                source: function( request, response ) {
                    $.ajax({
                        url: "/autoComplete/responseForSource",
                        dataType: "json",
                        method:"GET",
                        data: {
                            term: request.term,
                            searchBy : function() {
                                var sb = $("#searchBy_hidden").val();
                                return (sb ? sb : 'telephone_number'); }
                        },
                        success: function( data ) {
                            response( $.map( data, function( item ) {
                                return {
                                    label: item.name,
                                    value: item.name
                                }
                            }));
                        }
                    });
                }
            });
        });
    </script>
</head>

<body>
<input type="hidden" name="searchBy_hidden" id="searchBy_hidden" value="telephone_number" />
Enter the name of a species: <input type="textbox" size="30" id="species" />



</body>
</html>