/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import java.sql.Connection;
/**
 *
 * @author exnpt
 */
public class DBcontext {
    public DBcontext (){
        
    }
    public Connection getconnection ()throws Exception{
        SQLServerDataSource ds = new SQLServerDataSource();
            ds.setServerName("localhost");
            ds.setDatabaseName("shop");
            ds.setUser("sa");
            ds.setPassword("01642045955");
            ds.setPortNumber(1433);
            ds.setEncrypt(true);
            ds.setTrustServerCertificate(true);
            ds.setSSLProtocol("TLSv1.2");
            Connection conn = ds.getConnection();
            System.out.println("connect xong");
            return conn;
    }
}
