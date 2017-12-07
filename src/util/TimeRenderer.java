package util;

import java.awt.Component;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author cadilhe
 */
public class TimeRenderer extends DefaultTableCellRenderer {

    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value,
            boolean isSelected, boolean hasFocus, int row, int column) {
        
        super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
        
        if (value instanceof Date) {
            this.setText(sdf.format((Date) value));
        }
        return this;
    }
}
