<%-- 
    Document   : ClaimForm
    Created on : Nov 27, 2019, 2:20:57 PM
    Author     : Sajjad Ch
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CLAIM FORM</title>
    </head>
    <body>
        <h2>User's Claim Form:</h2>
        <%! int i=0;
            String str="Submit"; 
            String url = "Claim.do";
        %>
        <form method="POST" action="<%=url%>">     
             
            <table style="with: 50%">
                <tr>
                    <th></th>
                    <th>Please fill in your details</th>
                </tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="ID" /></td>
				</tr>
				<tr>
					<td>MEM_ID</td>
					<td><input type="text" name="MEM_ID" /></td>
				</tr>
				<tr>
					<td>DATE</td>
					<td><input type="text" name="DATE" value = "MM/DD/YYYY"/></td>
				</tr>
					<tr>
					<td>RATIONALE</td>
					<td><input type="text" name="RATIONALE" /></td>
				</tr>
				<tr>
					<td>STATUS</td>
					<td><input type="text" name="status" /></td>
				</tr>
				<tr>
					<td>Amount</td>
					<td><input type="text" name="balance" /></td>
                                </tr>
			
                </tr>
                                </tr></table>
                       
            </table>

    <input type="reset" value = "clear" name= "clear">
    <input type="submit" value="<%=str%>"/>
    </form>   
        <%
            if (i++>0 && request.getAttribute("message")!=null) {
                out.println(request.getAttribute("message"));
                i--;
            }
        %>
        </br>
        <jsp:include page="foot.jsp"/>
    </body>
</html>
