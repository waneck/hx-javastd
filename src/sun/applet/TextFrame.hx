package sun.applet;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
@:internal extern class TextFrame extends java.awt.Frame
{
	
}
@:internal extern class StdAppletViewerFactory implements sun.applet.AppletViewerFactory
{
	/**
	* Lets us construct one using unix-style one shot behaviors
	*/
	@:overload @:public public function createAppletViewer(x : Int, y : Int, doc : java.net.URL, atts : java.util.Hashtable<Dynamic, Dynamic>) : sun.applet.TextFrame.AppletViewer;
	
	@:overload @:public public function getBaseMenuBar() : java.awt.MenuBar;
	
	@:overload @:public public function isStandalone() : Bool;
	
	
}
extern class AppletViewer extends java.awt.Frame implements java.applet.AppletContext implements java.awt.print.Printable
{
	/**
	* Create the applet viewer
	*/
	@:overload @:public public function new(x : Int, y : Int, doc : java.net.URL, atts : java.util.Hashtable<Dynamic, Dynamic>, statusMsgStream : java.io.PrintStream, factory : sun.applet.AppletViewerFactory) : Void;
	
	@:overload @:public public function addMenuItem(m : java.awt.Menu, s : String) : java.awt.MenuItem;
	
	/**
	* Get an audio clip.
	*/
	@:overload @:public public function getAudioClip(url : java.net.URL) : java.applet.AudioClip;
	
	/**
	* Get an image.
	*/
	@:overload @:public public function getImage(url : java.net.URL) : java.awt.Image;
	
	/**
	* Get an applet by name.
	*/
	@:overload @:public public function getApplet(name : String) : java.applet.Applet;
	
	/**
	* Return an enumeration of all the accessible
	* applets on this page.
	*/
	@:overload @:public public function getApplets() : java.util.Enumeration<Dynamic>;
	
	/**
	* Ignore.
	*/
	@:overload @:public public function showDocument(url : java.net.URL) : Void;
	
	/**
	* Ignore.
	*/
	@:overload @:public public function showDocument(url : java.net.URL, target : String) : Void;
	
	/**
	* Show status.
	*/
	@:overload @:public public function showStatus(status : String) : Void;
	
	@:overload @:public public function setStream(key : String, stream : java.io.InputStream) : Void;
	
	@:overload @:public public function getStream(key : String) : java.io.InputStream;
	
	@:overload @:public public function getStreamKeys() : java.util.Iterator<Dynamic>;
	
	/**
	* Print the HTML tag.
	*/
	@:overload @:public @:static public static function printTag(out : java.io.PrintStream, atts : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Make sure the atrributes are uptodate.
	*/
	@:overload @:public public function updateAtts() : Void;
	
	@:overload @:public public function print(graphics : java.awt.Graphics, pf : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	@:overload @:public @:static @:synchronized public static function networkProperties() : Void;
	
	/**
	* Quit all viewers.
	* Shutdown all viewers properly then
	* exit from the program (if not stand alone)
	*/
	@:overload @:protected private function appletQuit() : Void;
	
	/**
	* Handle events.
	*/
	@:overload @:public public function processUserAction(evt : java.awt.event.ActionEvent) : Void;
	
	/**
	* How many applets are running?
	*/
	@:overload @:public @:static public static function countApplets() : Int;
	
	/**
	* Scan spaces.
	*/
	@:overload @:public @:static public static function skipSpace(_in : java.io.Reader) : Void;
	
	/**
	* Scan identifier
	*/
	@:overload @:public @:static public static function scanIdentifier(_in : java.io.Reader) : String;
	
	/**
	* Scan tag
	*/
	@:overload @:public @:static public static function scanTag(_in : java.io.Reader) : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Scan an html file for <applet> tags
	*/
	@:overload @:public @:static public static function parse(url : java.net.URL, enc : String) : Void;
	
	@:overload @:public @:static public static function parse(url : java.net.URL) : Void;
	
	@:overload @:public @:static public static function parse(url : java.net.URL, statusMsgStream : java.io.PrintStream, factory : sun.applet.AppletViewerFactory) : Void;
	
	/**
	* Old main entry point.
	*
	* @deprecated
	*/
	@:overload @:public @:static public static function main(argv : java.NativeArray<String>) : Void;
	
	
}
@:native('sun$applet$AppletViewer$UserActionListener') @:internal extern class AppletViewer_UserActionListener implements java.awt.event.ActionListener
{
	@:overload @:public public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
