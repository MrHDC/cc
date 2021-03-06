<!DOCTYPE>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Chụp ảnh</title>
        <meta name="viewport" content="width=device-width"/>
        <meta charset="utf-8"/><script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="static/website/js/jquery.js"></script>
        <script type="text/javascript" src="static/website/photobooth_min.js"></script>
        <script type="text/javascript" src="static/website/js/script.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
        <link type="text/css" rel="stylesheet" media="screen" href="static/website/css/page.css" />
        <link rel="shortcut icon" href="../../static/images/icons/favicon.ico" />
    </head>
    <body>
        <div id="wrapper">
            <div id="floatLeft">
                <div id="example"></div>
            </div>
            <div id="gallery"></div> 
        </div>  

        <script>
            $('#example').on("image", function (event, dataUrl) {
                $("#gallery").append('<img src="' + dataUrl + '" >');
                $("#imgUrl").append('' + dataUrl + '');
                $.post("getImage", {data: dataUrl}, function (a) {
                    //alert(a);
                })['fail'](function (a) {
                    //alert(a.responseText);
                    window.location.href = a.responseText;
                    //  console.log(a)
                });
            });
        </script>

        <!--
        pause
        -->


        <!--
        <h2><a name="dataUrl">Storing dataUrls as image</a></h2>
        The user clicked the camera icon, your <code>onImage()</code> function get's called and receives a dataUrl... now what?

        <h3>In the Browser</h3>

        <h3>Sending the image to the server</h3>

        <h3>Storing the image on the server</h3>
        Storing your dataUrl as an image is easy when you know how. A dataUrl consists of two parts, seperated by a come: a meta-data section at 
        the start and the actual data

        <code>data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAA...</code>

        The String after the comma is base64 encoded binary data. So in order to save it as an image you need to

        1) Split the dataUrl on the first comma
        2) base64 decode the data ( emphasize on DECODE, not encode )
        Every major serverside language has a built in way of doing that. E.g.

        PHP 
        $dataUrlParts = explode( ",", $dataUrl);
        base64_decode( $dataUrlParts[ 1 ] );

        
        Node.js
        var dataUrl = "data:image/jpeg;base64,/9j/4AAQSkZJRgA...";
        var buffer = new Buffer( dataUrl.split( "," )[ 1 ], 'base64');
        require( "fs" ).writeFileSync( "image.jpg", buffer.toString( 'binary' ), "binary" );

        3) Save the result to a file and name it yourImage.png ( or jpeg, depending on the dataUrl type )
        -->

    </body>
</html>