import QtQuick.Controls
import QtQuick.Layouts // for *Layouts

ColumnLayout{
    RowLayout{

        Label{
            text: "Slider 1"
        }
    
        Slider{
            from: 1
            value: 25
            to: 100
        }
    }

    RowLayout{

        Label{
            text: "Slider 2"
        }
    
        Slider{
            from: 1
            value: 25
            to: 100
        }
    }
    
}