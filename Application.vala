//  Application.vala

public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.dcallana.hello-world",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        var hello_button = new Gtk.Button.with_label ( "Press me" ) {
            margin = 12
        };
        
        hello_button.clicked.connect (() => {
            hello_button.label = "Deed is done";
            hello_button.sensitive = false;
        });
        
        var main_window = new Gtk.ApplicationWindow ( this ) {
            default_height = 300,
            default_width = 500,
            title = "Hello one and all"
        };
        main_window.add ( hello_button );
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        return new MyApp ().run (args); 
    }
}

