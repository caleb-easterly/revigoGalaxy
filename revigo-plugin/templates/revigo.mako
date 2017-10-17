<%
    root = h.url_for( "/" )
    app_root = root + "plugins/visualizations/revigo/static/"
%>

<html>
  <head>
    <title>Redirecting...</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        form { display: none; }
    </style>
    <script type="text/javascript" src="/static/scripts/libs/jquery/jquery.js"></script>
    <script>
    $(document).ready(function() {
        $("#data").load("${h.url_for( controller='/datasets',action='index')}/${trans.security.encode_id( hda.id )}/display",
            function() {
                $("form").submit();
            });
    });
    </script>
    </head>
  <body>
      <form action="http://revigo.irb.hr/" method="post">
        <textarea name="inputGoList" id="data" rows="10" cols="80">
        </textarea>
      </form>
     <input type="submit" name="startRevigo" value="Click if not automatically redirected" />


  </body>
</html>
