package example.com.employee_gson_android;

import android.os.Bundle;
import android.os.StrictMode;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

import com.employee.gson.EmployeeGsonExample;

import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MainActivity extends AppCompatActivity {

    private final Logger logger = Logger.getLogger("example.com.employee_gson_android");

    Integer employeeCount = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        //Change policy so that we can run things on the main thread.
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                employeeCount = Integer.parseInt(findViewById(R.id.employeeCount).getAutofillValue().getTextValue().toString());
                if(employeeCount == null) {
                    employeeCount = 10;
                }
                Snackbar.make(view, "Creating " + employeeCount.toString() + " Employees!", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
                generateGson();

            }
        });
    }

    private void generateGson() {
        TextView textView = findViewById(R.id.txtResult);
        textView.setText("~");
        Date startTime = new Date();
        EmployeeGsonExample.convertEmployees(employeeCount);
        Date endTime = new Date();
        String message = "Time taken: " + String.valueOf(endTime.getTime()-startTime.getTime() + "ms");
        logger.log(Level.INFO, message);
        textView.setText(message);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
