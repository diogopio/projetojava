<!DOCTYPE html>
<html>
<head>
    <title>Microsoft Azure Web Site - Bem-vindo</title>
    <meta charset="utf-8">
    <style type="text/css">
        html {
            height: 100%;
            width: 100%;
        }

        #feature {
            width: 960px;
            margin: 95px auto 0 auto;
            overflow: auto;
        }

        #content {
            font-family: "Segoe UI";
            font-weight: normal;
            font-size: 26px;
            color: #ffffff;
            float: left;
            width: 460px;
            margin-top: 68px;
            margin-left: 0px;
            vertical-align: middle;
        }

            #content h1 {
                font-family: "Segoe UI Light";
                color: #ffffff;
                font-weight: normal;
                font-size: 70px;
                line-height: 48pt;
                width: 800px;
            }

	    #content h2 {
                font-family: "Segoe UI Light";
                color: #ffffff;
                font-weight: normal;
                font-size: 60px;
                line-height: 48pt;
                width: 800px;
            }

        p a, p a:visited, p a:active, p a:hover {
            color: #ffffff;
        }

        #content a.button {
            background: #0DBCF2;
            border: 1px solid #FFFFFF;
            color: #FFFFFF;
            display: inline-block;
            font-family: Segoe UI;
            font-size: 24px;
            line-height: 46px;
            margin-top: 10px;
            padding: 0 15px 3px;
            text-decoration: none;
        }

            #content a.button img {
                float: right;
                padding: 10px 0 0 15px;
            }

            #content a.button:hover {
                background: #1C75BC;
            }

        body {
            background-image: url('background.png');
            background-repeat: no-repeat;
            background-position: center;
        }
    </style >
    

</head>
<body bgcolor="#00abec" >
    <div id="feature">
        <div id="content">
            <h2>Aplicação criada com sucesso!</h2>

            <table width="750" frame="below">
              <tr bgcolor="rgb(13,188,242)">  
                <th align="left" width="200">    Java Property  </th>  
                <th align="left" width="500">    Value  </th>
              </tr>
              <%@ page import="java.util.*" %>
              <%
                  ArrayList<String> mainPageProps = new ArrayList<String>();
                  mainPageProps.add("java.version");
                  mainPageProps.add("java.vendor");
                  mainPageProps.add("os.arch");
                  mainPageProps.add("catalina.base");
                  mainPageProps.add("jetty.base");
                  mainPageProps.add("user.timezone");
                  for(String name : mainPageProps)
                  {
                    String value = System.getProperty(name);
                    if(value != null)
                    {
  out.print("<tr><td>" + name);
  out.print("</td><td>" + value );
  out.print("</td></tr>");
                    }
                  }
              %>
            </table>
          </font>
        </div>
    </div>
</body>

</html>