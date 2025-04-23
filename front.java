package demo2.testing10;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.StackPane;
import javafx.scene.control.Button;
import javafx.stage.Stage;
import java.io.FileWriter;
import java.io.IOException;
import javafx.scene.layout.VBox;

public class front extends Application {

    @Override
    public void start(Stage stage) {


        //here is the  small summary about are desktop app about fiance tracker
        Label welcoming_summary = new Label("Welcome to Fiance Tracker, where we help students and others mange and " +
                "help with there finainces ");


        //here is the get started button
        Button Get_Started = new Button("Get Started");


//armando code will syntc here so it will take his code to the user
        Get_Started.setOnAction(event -> {
            System.out.println("Hello please give me a minute while we get you started");
        });


        VBox root = new VBox(20);
        root.getChildren().addAll(welcoming_summary, Get_Started);
        Scene scene = new Scene(root);
        stage.setTitle("Fiance Tracker");
        stage.setScene(scene);
        stage.show();


    }


    public static void main(String[] args) {
        launch();
    }
}
