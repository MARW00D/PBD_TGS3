/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pbd_database;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Scanner;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author ASUS
 */
public class PBD_DATABASE {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String URL_DB = "jdbc:mysql://localhost/mahasiswa";
    static final String username = "root";
    static final String pass = "";
    
    static  Connection conn;
    static  Statement stmt;
    static  ResultSet hasil;

    /**
     * @param args the command line arguments
     */
    public static void main (String[] args) {
        try{
        koneksi();
            if(login()){
                insertdata();
            }else{
                System.out.println("FAILED LOGIN");
            }
        } catch (Exception e){
            e.getMessage();
        }
        
    }
    
    static void koneksi(){
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(URL_DB,username,pass);
            stmt = conn.createStatement();
            System.out.println("koneksi berhasil");
        }catch (Exception e) {
            System.out.println("koneksi gagal");    
        }
    }
       static void tampildata(){
           try{
               String sql = "select * from datamahasiswa";
               hasil      = stmt.executeQuery(sql);
               while(hasil.next()){
                   System.out.print(hasil.getString(1) + " | ");
                   System.out.print(hasil.getString(2) + " | ");
                   System.out.print(hasil.getString(3) + " | ");
                   System.out.println(hasil.getString(4));
               }
           }catch (Exception e){
           }
    }
       static boolean login(){
           boolean status;
           try {
               status = false;
               String user = JOptionPane.showInputDialog("USERNAME");
               String pass = JOptionPane.showInputDialog("PASSWORD");
               String sql = "select * from akun where user='" +user+ "'and pass= '" +pass+ "'";
               hasil = stmt.executeQuery(sql);
               while(hasil.next()) {
                   status = true;
               }
               return status;
           } catch (Exception e) {
               status=false;
               return status;
           }
       }
       
       static void insertdata() {
           
           String nim = JOptionPane.showInputDialog("NIM");
           String nama = JOptionPane.showInputDialog("NAMA");
           String kota = JOptionPane.showInputDialog("ASAL KOTA");
           String hp = JOptionPane.showInputDialog("HP");
           String sts = JOptionPane.showInputDialog("STATUS");
           String kls = JOptionPane.showInputDialog("KELAS");
           String konsentrasi = JOptionPane.showInputDialog("JURUSAN");
           
           String sql = "INSERT INTO `datamahasiswa` (`nim`, `nama`, `kota`, `handphone`, `status`, `kelas`, `konsentrasi`) VALUES ('"+nim+"', '"+nama+"', '"+kota+"', '"+hp+"', '"+sts+"', '"+kls+"', '"+konsentrasi+"')";
           try {
               stmt.executeUpdate(sql);
               tampildata();
               System.out.println("test");
           } catch (Exception e) {
               e.getMessage();
           }
       }
}

 