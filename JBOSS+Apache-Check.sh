# Check JBOSS + Apache Service Status:
sudo systemctl status jbcs-httpd24-httpd.service 
sudo systemctl status jboss-dscsa.service
sudo systemctl status jboss-at-batch.service
sudo systemctl status jboss-at-dps.service
sudo systemctl status jboss-services.service
sudo systemctl status jboss-tools.service


# Start Aapache and JBOSS
sudo systemctl start jbcs-httpd24-httpd.service
sudo systemctl start jboss-dscsa.service
sudo systemctl start jboss-at-batch.service
sudo systemctl start jboss-at-dps.service
sudo systemctl start jboss-services.service
sudo systemctl start jboss-tools.service





