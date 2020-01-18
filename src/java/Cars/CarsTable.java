/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cars;

import config.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mustapha Abdelaziz
 */
public class CarsTable {

    static Statement statement = null;
    static PreparedStatement preparedStatement = null;

    public static List select() {
        try {
            Connection connect = DBConnection.getConnection();
            statement = connect.createStatement();
            String query = "SELECT * FROM cars";
            ArrayList<Car> list = new ArrayList();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Car car = new Car(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getInt(5),
                        resultSet.getInt(6),
                        resultSet.getString(7),
                        resultSet.getString(8));
                list.add(car);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CarsTable.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (null);
    }

    public static List select(int idCar) {
        try {
            Connection connect = DBConnection.getConnection();
            String query = "SELECT * FROM cars WHERE idCar=" + idCar;
            ArrayList<Car> list = new ArrayList();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Car car = new Car(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getInt(5),
                        resultSet.getInt(6),
                        resultSet.getString(7),
                        resultSet.getString(8));
                list.add(car);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CarsTable.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (null);
    }

    public static void insert(Car car) {
        try {
            String insertQuerry = "INSERT INTO cars (brand, color, carbural, KM, price, state, pictureURL) VALUES (?,?,?,?,?,?,?)";
            Connection connect = DBConnection.getConnection();
            preparedStatement = connect.prepareStatement(insertQuerry);
            preparedStatement.setString(1, car.getBrand());
            preparedStatement.setString(2, car.getColor());
            preparedStatement.setString(3, car.getCarbural());
            preparedStatement.setInt(4, car.getKilom());
            preparedStatement.setInt(5, car.getPrice());
            preparedStatement.setString(6, car.getState());
            preparedStatement.setString(7, car.getPictureURL());
            preparedStatement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CarsTable.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void update(Car car, int id) {
        System.out.println(car);
        String updateQuery = "UPDATE cars SET brand = ?,color = ?,carbural = ?,KM = ?,price = ?,state = ? where IDCar=?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(DBConnection.conecter());
        jdbcTemplate.update(updateQuery,
                car.getBrand(),
                car.getColor(),
                car.getCarbural(),
                car.getKilom(),
                car.getPrice(),
                car.getState(),
                id);
    }

    public static void delete(int id) {
        String deleteQuery = "DELETE FROM cars where IDCar=" + id;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(DBConnection.conecter());
        jdbcTemplate.update(deleteQuery);
    }

}
