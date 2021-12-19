#!/bin/bash

cat <<-'EOF'
Refresh: 60
Content-Security-Policy: script-src 'self'; connect-src 'self'; form-action 'self'; sandbox allow-forms allow-same-origin;
X-Content-Security-Policy: script-src 'self'; connect-src 'self'; form-action 'self'; sandbox allow-forms allow-same-origin;
X-Webkit-CSP: script-src 'self'; connect-src 'self'; form-action 'self'; sandbox allow-forms allow-same-origin;
Content-type: text/html

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html">
<META HTTP-EQUIV="REFRESH" CONTENT="60">
<META HTTP-EQUIV="EXPIRES" CONTENT="Sat, 01 Jan 2001 00:00:00 GMT">
<META HTTP-EQUIV="Set-Cookie" CONTENT="pagepath=; path=/">
<META HTTP-EQUIV="Set-Cookie" CONTENT="host=jamescarson.ninja; path=/">
<TITLE>green : Xymon - bbd status for jamescarson.ninja (45.76.5.191) @ Sun Dec 19 03:44:03 2021</TITLE>

<!-- Styles for the Xymon body  -->
<link rel="stylesheet" type="text/css" href="/xymon/gifs/xymonbody.css">

<!-- Styles for the menu bar -->
<link rel="stylesheet" type="text/css" href="/xymon/menu/xymonmenu-blue.css">

<!-- The favicon image -->
<link rel="shortcut icon" href="/xymon/gifs/favicon-green.ico">

</HEAD>

<BODY class="green">

<div id="menue">
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Views</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon/xymon.html">Main view</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/nongreen.html">All non-green view</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/criticalview.sh">Critical systems</a>
    </div>
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Reports</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon-cgi/eventlog.sh">Event log Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/topchanges.sh">Top Changes</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/report.sh">Availability Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/snapshot.sh">Snapshot Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/confreport.sh">Config Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/confreport-critical.sh">Config Report (Critical)</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/hostgraphs.sh">Metrics Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/ghostlist.sh">Ghost Clients</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/notifications.sh">Notification Report</a>
	<a class="inner" href="/xymon-cgi/acknowledgements.sh">Acknowledgements</a>
    </div>
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Administration</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon-cgi/findhost.sh">Find host</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-seccgi/acknowledge.sh">Acknowledge alert</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-seccgi/enadis.sh">Enable/disable</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-seccgi/criticaleditor.sh">Edit critical systems</a>
    </div>
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Help</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon/help/about.html">About Xymon</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/install.html">Installing Xymon</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/xymon-config.html">Configuring Monitoring</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/xymon-alerts.html">Configuring Alerts</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/criticalsystems.html">Critical systems</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/known-issues.html">Known problems</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/xymon-tips.html">Tips and Tricks</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/howtograph.html">Custom graphs</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/manpages/">Xymon man-pages</a>
    </div>
</div>



<TABLE SUMMARY="Topline" WIDTH="100%">
<TR><TD HEIGHT=16>&nbsp;</TD></TR>  <!-- For the menu bar -->
<TR>
  <TD VALIGN=MIDDLE ALIGN=LEFT WIDTH="30%">
    <FONT FACE="Arial, Helvetica" SIZE="+1" COLOR="silver"><B>Xymon</B></FONT>
  </TD>
  <TD VALIGN=MIDDLE ALIGN=CENTER WIDTH="40%">
    <CENTER><FONT FACE="Arial, Helvetica" SIZE="+1" COLOR="silver"><B>jamescarson.ninja - bbd</B></FONT></CENTER>
  </TD>
  <TD VALIGN=MIDDLE ALIGN=RIGHT WIDTH="30%">
   <FONT FACE="Arial, Helvetica" SIZE="+1" COLOR="silver"><B>Sun Dec 19 03:44:03 2021</B></FONT>
  </TD>
</TR>
<TR>
  <TD COLSPAN=3> <HR WIDTH="100%"> </TD>
</TR>
</TABLE>
<BR>

<br><br><a name="begindata">&nbsp;</a>
<BR><BR><CENTER><FORM ACTION="/xymon-cgi/history.sh"><INPUT TYPE=SUBMIT VALUE="HISTORY"><INPUT TYPE=HIDDEN NAME="HISTFILE" VALUE="jamescarson.ninja.bbd"><INPUT TYPE=HIDDEN NAME="ENTRIES" VALUE="50"><INPUT TYPE=HIDDEN NAME="IP" VALUE="45.76.5.191"><INPUT TYPE=HIDDEN NAME="DISPLAYNAME" VALUE="jamescarson.ninja"></FORM></CENTER>
<CENTER><TABLE ALIGN=CENTER BORDER=0 SUMMARY="Detail Status">
<TR><TD ALIGN=LEFT><H3> <!-- [flags:OrdastLe] --> Sun Dec 19 03:44:03 2021 bbd ok </H3>
<PRE>

Service bbd on jamescarson.ninja is OK (up)


Seconds: 0.000050000



</PRE>
</TD></TR></TABLE>
<br><br>
<table align="center" border=0 summary="Status report info">
<tr><td align="center"><font COLOR="#87a9e5" SIZE="-1">Status unchanged in 7 days, 4 hours, 31 minutes<br>
Status message received from 45.76.5.191<br>
<a href="/xymon-cgi/svcstatus.sh?CLIENT=jamescarson.ninja">Client data</a> available<br>
</font></td></tr>
</table>
<!-- linecount=0 -->
<a name="begingraph">&nbsp;</a>
<table summary="tcp:bbd Graph"><tr><td><A HREF="/xymon-cgi/showgraph.sh?host=jamescarson.ninja&amp;service=tcp:bbd&amp;graph_width=576&amp;graph_height=120&amp;disp=jamescarson%2eninja&amp;nostale&amp;color=green&amp;graph_start=1639712814&amp;graph_end=1639885614&amp;action=menu"><IMG BORDER=0 SRC="/xymon-cgi/showgraph.sh?host=jamescarson.ninja&amp;service=tcp:bbd&amp;graph_width=576&amp;graph_height=120&amp;disp=jamescarson%2eninja&amp;nostale&amp;color=green&amp;graph_start=1639712814&amp;graph_end=1639885614&amp;graph=hourly&amp;action=view" ALT="xymongraph tcp:bbd"></A></td><td> <td align="left" valign="top"> <a href="/xymon-cgi/showgraph.sh?host=jamescarson.ninja&amp;service=tcp:bbd&amp;graph_width=576&amp;graph_height=120&amp;disp=jamescarson%2eninja&amp;nostale&amp;color=green&amp;graph_start=1639712814&amp;graph_end=1639885614&amp;graph=custom&amp;action=selzoom"> <img src="/xymon/gifs/zoom.gif" border=0 alt="Zoom graph" style='padding: 3px'> </a> </td></tr></table>

</CENTER>
<BR><BR>

<TABLE SUMMARY="Bottomline" WIDTH="100%">
<TR>
  <TD> <HR WIDTH="100%"> </TD>
</TR>
<TR>
  <TD ALIGN=RIGHT><FONT FACE="Arial, Helvetica" SIZE="-2" COLOR="silver"><B><A HREF="http://xymon.sourceforge.net/" style="text-decoration: none">Xymon 4.3.30</A></B></FONT></TD>
</TR>
</TABLE>

<!-- Don't rely just on HTML to set the cookies -->
<!-- http://lists.xymon.com/pipermail/xymon/2018-June/045538.html -->
<script type="text/javascript">
    var metas = document.getElementsByTagName('meta');

    for (var i=0; i<metas.length; i++) {
        var type = metas[i].getAttribute("HTTP-EQUIV");
        if (type == "Set-Cookie") {
            var prop = metas[i].getAttribute("CONTENT");
            document.cookie = prop;
        }
    }
</script>



</BODY>
</HTML>

I, [2021-12-19T03:46:54.521197 #2598256]  INFO -- : response sent to client
D, [2021-12-19T03:46:54.521225 #2598256] DEBUG -- : Refresh: 60
Content-type: text/html; charset: UTF-8

Refresh: 60
Content-Security-Policy: script-src 'self'; connect-src 'self'; form-action 'self'; sandbox allow-forms allow-same-origin;
X-Content-Security-Policy: script-src 'self'; connect-src 'self'; form-action 'self'; sandbox allow-forms allow-same-origin;
X-Webkit-CSP: script-src 'self'; connect-src 'self'; form-action 'self'; sandbox allow-forms allow-same-origin;
Content-type: text/html

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html">
<META HTTP-EQUIV="REFRESH" CONTENT="60">
<META HTTP-EQUIV="EXPIRES" CONTENT="Sat, 01 Jan 2001 00:00:00 GMT">
<META HTTP-EQUIV="Set-Cookie" CONTENT="pagepath=; path=/">
<META HTTP-EQUIV="Set-Cookie" CONTENT="host=jamescarson.ninja; path=/">
<TITLE>green : Xymon - bbd status for jamescarson.ninja (45.76.5.191) @ Sun Dec 19 03:44:03 2021</TITLE>

<!-- Styles for the Xymon body  -->
<link rel="stylesheet" type="text/css" href="/xymon/gifs/xymonbody.css">

<!-- Styles for the menu bar -->
<link rel="stylesheet" type="text/css" href="/xymon/menu/xymonmenu-blue.css">

<!-- The favicon image -->
<link rel="shortcut icon" href="/xymon/gifs/favicon-green.ico">

</HEAD>

<BODY class="green">

<div id="menue">
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Views</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon/xymon.html">Main view</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/nongreen.html">All non-green view</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/criticalview.sh">Critical systems</a>
    </div>
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Reports</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon-cgi/eventlog.sh">Event log Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/topchanges.sh">Top Changes</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/report.sh">Availability Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/snapshot.sh">Snapshot Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/confreport.sh">Config Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/confreport-critical.sh">Config Report (Critical)</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/hostgraphs.sh">Metrics Report</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/ghostlist.sh">Ghost Clients</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-cgi/notifications.sh">Notification Report</a>
	<a class="inner" href="/xymon-cgi/acknowledgements.sh">Acknowledgements</a>
    </div>
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Administration</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon-cgi/findhost.sh">Find host</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-seccgi/acknowledge.sh">Acknowledge alert</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-seccgi/enadis.sh">Enable/disable</a><span class="invis"> | </span>
	<a class="inner" href="/xymon-seccgi/criticaleditor.sh">Edit critical systems</a>
    </div>
    <div class="outer">
      <span class="menutag"><a href="javascript:;">Help</a><span class="invis">: </span></span>
	<a class="inner-1" href="/xymon/help/about.html">About Xymon</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/install.html">Installing Xymon</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/xymon-config.html">Configuring Monitoring</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/xymon-alerts.html">Configuring Alerts</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/criticalsystems.html">Critical systems</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/known-issues.html">Known problems</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/xymon-tips.html">Tips and Tricks</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/howtograph.html">Custom graphs</a><span class="invis"> | </span>
	<a class="inner" href="/xymon/help/manpages/">Xymon man-pages</a>
    </div>
</div>



<TABLE SUMMARY="Topline" WIDTH="100%">
<TR><TD HEIGHT=16>&nbsp;</TD></TR>  <!-- For the menu bar -->
<TR>
  <TD VALIGN=MIDDLE ALIGN=LEFT WIDTH="30%">
    <FONT FACE="Arial, Helvetica" SIZE="+1" COLOR="silver"><B>Xymon</B></FONT>
  </TD>
  <TD VALIGN=MIDDLE ALIGN=CENTER WIDTH="40%">
    <CENTER><FONT FACE="Arial, Helvetica" SIZE="+1" COLOR="silver"><B>jamescarson.ninja - bbd</B></FONT></CENTER>
  </TD>
  <TD VALIGN=MIDDLE ALIGN=RIGHT WIDTH="30%">
   <FONT FACE="Arial, Helvetica" SIZE="+1" COLOR="silver"><B>Sun Dec 19 03:44:03 2021</B></FONT>
  </TD>
</TR>
<TR>
  <TD COLSPAN=3> <HR WIDTH="100%"> </TD>
</TR>
</TABLE>
<BR>

<br><br><a name="begindata">&nbsp;</a>
<BR><BR><CENTER><FORM ACTION="/xymon-cgi/history.sh"><INPUT TYPE=SUBMIT VALUE="HISTORY"><INPUT TYPE=HIDDEN NAME="HISTFILE" VALUE="jamescarson.ninja.bbd"><INPUT TYPE=HIDDEN NAME="ENTRIES" VALUE="50"><INPUT TYPE=HIDDEN NAME="IP" VALUE="45.76.5.191"><INPUT TYPE=HIDDEN NAME="DISPLAYNAME" VALUE="jamescarson.ninja"></FORM></CENTER>
<CENTER><TABLE ALIGN=CENTER BORDER=0 SUMMARY="Detail Status">
<TR><TD ALIGN=LEFT><H3> <!-- [flags:OrdastLe] --> Sun Dec 19 03:44:03 2021 bbd ok </H3>
<PRE>

Service bbd on jamescarson.ninja is OK (up)


Seconds: 0.000050000



</PRE>
</TD></TR></TABLE>
<br><br>
<table align="center" border=0 summary="Status report info">
<tr><td align="center"><font COLOR="#87a9e5" SIZE="-1">Status unchanged in 7 days, 4 hours, 31 minutes<br>
Status message received from 45.76.5.191<br>
<a href="/xymon-cgi/svcstatus.sh?CLIENT=jamescarson.ninja">Client data</a> available<br>
</font></td></tr>
</table>
<!-- linecount=0 -->
<a name="begingraph">&nbsp;</a>
<table summary="tcp:bbd Graph"><tr><td><A HREF="/xymon-cgi/showgraph.sh?host=jamescarson.ninja&amp;service=tcp:bbd&amp;graph_width=576&amp;graph_height=120&amp;disp=jamescarson%2eninja&amp;nostale&amp;color=green&amp;graph_start=1639712814&amp;graph_end=1639885614&amp;action=menu"><IMG BORDER=0 SRC="/xymon-cgi/showgraph.sh?host=jamescarson.ninja&amp;service=tcp:bbd&amp;graph_width=576&amp;graph_height=120&amp;disp=jamescarson%2eninja&amp;nostale&amp;color=green&amp;graph_start=1639712814&amp;graph_end=1639885614&amp;graph=hourly&amp;action=view" ALT="xymongraph tcp:bbd"></A></td><td> <td align="left" valign="top"> <a href="/xymon-cgi/showgraph.sh?host=jamescarson.ninja&amp;service=tcp:bbd&amp;graph_width=576&amp;graph_height=120&amp;disp=jamescarson%2eninja&amp;nostale&amp;color=green&amp;graph_start=1639712814&amp;graph_end=1639885614&amp;graph=custom&amp;action=selzoom"> <img src="/xymon/gifs/zoom.gif" border=0 alt="Zoom graph" style='padding: 3px'> </a> </td></tr></table>

</CENTER>
<BR><BR>

<TABLE SUMMARY="Bottomline" WIDTH="100%">
<TR>
  <TD> <HR WIDTH="100%"> </TD>
</TR>
<TR>
  <TD ALIGN=RIGHT><FONT FACE="Arial, Helvetica" SIZE="-2" COLOR="silver"><B><A HREF="http://xymon.sourceforge.net/" style="text-decoration: none">Xymon 4.3.30</A></B></FONT></TD>
</TR>
</TABLE>

<!-- Don't rely just on HTML to set the cookies -->
<!-- http://lists.xymon.com/pipermail/xymon/2018-June/045538.html -->
<script type="text/javascript">
    var metas = document.getElementsByTagName('meta');

    for (var i=0; i<metas.length; i++) {
        var type = metas[i].getAttribute("HTTP-EQUIV");
        if (type == "Set-Cookie") {
            var prop = metas[i].getAttribute("CONTENT");
            document.cookie = prop;
        }
    }
</script>



</BODY>
</HTML>
EOF
