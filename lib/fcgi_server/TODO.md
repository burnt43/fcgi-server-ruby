### Add Comments
Comment the code so I know what the hell is happening when I have to come back to this code for some reason.

### Response Header
I think the first 4 bytes is always the same, the last 4 bytes seem to have something to do with the length of the response. I have it as 0xff000000. That seems to work for now.

### Write Automated Tests
Use minitest. Make sure the parsing of requests and the parsing of the responses from xymon is working.

### System Cleanup
I needed to install php and php-fpm to test how FCGI properly responds. I need to remove these after I get everything working.

### Parse Headers and Body
Use the CgiResponse class to be able to take the response from the xymon scripts and split into header and body sections.

### Config File
Write some quick documentation on the config file.

### Readme
Explain how to set this up. Show nginx conf and everything.
