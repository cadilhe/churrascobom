/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author sigaln
 */
public class JFrmPrincipal extends javax.swing.JFrame {

    /**
     * Creates new form JFrmPrincipal
     */
    public JFrmPrincipal() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jToolBar1 = new javax.swing.JToolBar();
        javax.swing.JButton btnChurrasco = new javax.swing.JButton();
        javax.swing.JButton btnConvidado = new javax.swing.JButton();
        javax.swing.JButton btnCarne = new javax.swing.JButton();
        javax.swing.JButton btnBebida = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JToolBar.Separator();
        javax.swing.JButton btnUsuario = new javax.swing.JButton();
        javax.swing.JButton btnSair = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        JMenuPrincipal = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuConvidado = new javax.swing.JMenuItem();
        jMenuCarne = new javax.swing.JMenuItem();
        jMenuBebida = new javax.swing.JMenuItem();
        jMenUsuario = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setExtendedState(6);

        jToolBar1.setRollover(true);

        btnChurrasco.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/churrasco.png"))); // NOI18N
        btnChurrasco.setFocusable(false);
        btnChurrasco.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnChurrasco.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnChurrasco.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnChurrascoActionPerformed(evt);
            }
        });
        jToolBar1.add(btnChurrasco);

        btnConvidado.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/convidado.png"))); // NOI18N
        btnConvidado.setFocusable(false);
        btnConvidado.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnConvidado.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnConvidado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConvidadoActionPerformed(evt);
            }
        });
        jToolBar1.add(btnConvidado);

        btnCarne.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/carne.png"))); // NOI18N
        btnCarne.setFocusable(false);
        btnCarne.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnCarne.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnCarne.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCarneActionPerformed(evt);
            }
        });
        jToolBar1.add(btnCarne);

        btnBebida.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/bebida.png"))); // NOI18N
        btnBebida.setFocusable(false);
        btnBebida.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnBebida.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnBebida.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBebidaActionPerformed(evt);
            }
        });
        jToolBar1.add(btnBebida);
        jToolBar1.add(jSeparator1);

        btnUsuario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/usuario.png"))); // NOI18N
        btnUsuario.setFocusable(false);
        btnUsuario.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnUsuario.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUsuarioActionPerformed(evt);
            }
        });
        jToolBar1.add(btnUsuario);

        btnSair.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/btn_exit.png"))); // NOI18N
        btnSair.setFocusable(false);
        btnSair.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnSair.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        jToolBar1.add(btnSair);

        jMenu1.setText("Cadastros");
        jMenu1.setActionCommand("");

        jMenuConvidado.setText("Convidado");
        jMenuConvidado.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuConvidadoActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuConvidado);

        jMenuCarne.setText("Carne");
        jMenuCarne.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuCarneActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuCarne);

        jMenuBebida.setText("Bebida");
        jMenuBebida.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuBebidaActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuBebida);

        jMenUsuario.setText("Usuário");
        jMenUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenUsuarioActionPerformed(evt);
            }
        });
        jMenu1.add(jMenUsuario);

        JMenuPrincipal.add(jMenu1);

        jMenu2.setText("Churrasco");
        JMenuPrincipal.add(jMenu2);

        setJMenuBar(JMenuPrincipal);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jToolBar1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jScrollPane1)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jToolBar1, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1)
                .addContainerGap())
        );

        setSize(new java.awt.Dimension(539, 339));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnConvidadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConvidadoActionPerformed
        // TODO add your handling code here:
        JCadConvidado.main(null);
    }//GEN-LAST:event_btnConvidadoActionPerformed

    private void btnChurrascoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnChurrascoActionPerformed
        // TODO add your handling code here:
        JCadChurrasco.main(null);
    }//GEN-LAST:event_btnChurrascoActionPerformed

    private void btnCarneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCarneActionPerformed
        // TODO add your handling code here:
        JCadCarne.main(null);
    }//GEN-LAST:event_btnCarneActionPerformed

    private void btnBebidaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBebidaActionPerformed
        // TODO add your handling code here:
        JCadBebida.main(null);
    }//GEN-LAST:event_btnBebidaActionPerformed

    private void btnUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUsuarioActionPerformed
        // TODO add your handling code here:
        JCadUsuario.main(null);
    }//GEN-LAST:event_btnUsuarioActionPerformed

    private void jMenuConvidadoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuConvidadoActionPerformed
        // TODO add your handling code here:
        JCadConvidado.main(null);
        
    }//GEN-LAST:event_jMenuConvidadoActionPerformed

    private void jMenuCarneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuCarneActionPerformed
        // TODO add your handling code here:
        JCadCarne.main(null);
    }//GEN-LAST:event_jMenuCarneActionPerformed

    private void jMenuBebidaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuBebidaActionPerformed
        // TODO add your handling code here:
        JCadBebida.main(null);
    }//GEN-LAST:event_jMenuBebidaActionPerformed

    private void jMenUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenUsuarioActionPerformed
        // TODO add your handling code here:
        JCadUsuario.main(null);
    }//GEN-LAST:event_jMenUsuarioActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(JFrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(JFrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(JFrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(JFrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new JFrmPrincipal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuBar JMenuPrincipal;
    private javax.swing.JMenuItem jMenUsuario;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenuItem jMenuBebida;
    private javax.swing.JMenuItem jMenuCarne;
    private javax.swing.JMenuItem jMenuConvidado;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JToolBar.Separator jSeparator1;
    private javax.swing.JToolBar jToolBar1;
    // End of variables declaration//GEN-END:variables
}
