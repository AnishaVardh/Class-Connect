/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author test
 */
public class DBMSResult extends HttpServlet {
    
    String usernmae= null;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = null;
                    
                    Cookie[] cookies;
                    Cookie cookie;
                    cookies = request.getCookies();
                    
                    for(int i = 0; i < cookies.length; i++){
                        cookie = cookies[i];
                            if(cookie.getName().equals("username")) {
                                username = cookie.getValue();
                            }
                            
                    }

                    System.out.print("no. : "+username);
        ResultBean RB = new ResultBean();
        PrintWriter out = response.getWriter();
        int DBMSAnswers[] = {0,3,3,4,1,4,3,4,1,2,1,3,3,2,3,2,4,4,4,4,4};
        int[] tempResult = new int[30];
        int score = 0;
        boolean[] verd = new boolean[30];
        
        
        for(int i = 1; i <= 20; i++) {
            String getParam = "Q"+Integer.toString(i);
            tempResult[i] = (Integer.parseInt(request.getParameter(getParam)));
            
            if(tempResult[i] == DBMSAnswers[i]) {
                score++;
                verd[i] = true;
            }
            else {
                verd[i] = false;
            }
        }
        
        if(score <= 10) {
            RB.setDBMSVerdict("Very Poor");
        }
        else if(score > 10 && score <= 15) {
            RB.setDBMSVerdict("Good");
        }
        else if(score > 15 && score <= 19) {
             RB.setDBMSVerdict("Very Good");
        }
        else if(score == 20) {
             RB.setDBMSVerdict("Outstanding");
        }
 //Unit Testing       
//        for(int i = 1; i <= 20; i++) {
//            out.print("<p>"+tempResult[i]+"\t"+verd[i]);
//            out.print("</p>");
//        }
//        out.print(score);
//        out.print(RB.getDBMSVerdict());
       RB.setDBMSAnswers(verd);
       RB.setDBMSResult(tempResult);
       RB.setDBMSScores(score);
        
                final String JDBC_DRIVER="com.mysql.jdbc.Driver";
                final String DB_URL="jdbc:mysql://localhost:3306/classconnect";
                final String USER="root";
                final String PASS="root";
             try {
                 Class.forName(JDBC_DRIVER);
                  Connection C = DriverManager.getConnection(DB_URL, USER, PASS);
                  Statement S = C.createStatement();
                 String Query = "INSERT INTO DBMSRESULTS VALUES ('"+username+"',"+verd[1]+","
                                                                    +verd[2]+","
                                                                    +verd[3]+","
                                                                    +verd[4]+","
                                                                    +verd[5]+","
                                                                    +verd[6]+","
                                                                    +verd[7]+","
                                                                    +verd[8]+","
                                                                    +verd[9]+","
                                                                    +verd[10]+","
                                                                    +verd[11]+","
                                                                    +verd[12]+","
                                                                    +verd[13]+","
                                                                    +verd[14]+","
                                                                    +verd[15]+","
                                                                    +verd[16]+","
                                                                    +verd[17]+","
                                                                    +verd[18]+","
                                                                    +verd[19]+","
                                                                    +verd[20]+","
                                                                    +score+",'"
                                                                +RB.getDBMSVerdict()+"');";
                  S.executeUpdate(Query);
                  S.close();
                  System.out.println(RB.getDBMSScores());
                  
         
                   
                   request.setAttribute("RB",RB);
                   RequestDispatcher RD = request.getRequestDispatcher("./DBMSReview.jsp");
                   RD.forward(request, response);
                   
                  
             } catch (ClassNotFoundException | SQLException ex) {
                   RequestDispatcher RD = request.getRequestDispatcher("./Error.jsp");
                   RD.forward(request, response);
                 
                 
             }   
         }
}