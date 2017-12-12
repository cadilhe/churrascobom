package util;

import java.awt.Component;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.Locale;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author cadilhe
 */
public class PrecoRenderer extends DefaultTableCellRenderer {

    NumberFormat nf = NumberFormat.getCurrencyInstance(new Locale("pt", "BR"));

    public Component getTableCellRendererComponent(JTable table, Object value,
            boolean isSelected, boolean hasFocus, int row, int column) {

        super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);

        if (value instanceof BigDecimal) {
            this.setText(nf.format((BigDecimal) value));
        }
        
        if (value instanceof Float) {
            this.setText(nf.format((Float) value));
        }

        return this;
    }

}
