package sun.applet;
/*
* Copyright (c) 1995, 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* Sample applet panel class. The panel manages and manipulates the
* applet as it is being loaded. It forks a seperate thread in a new
* thread group to call the applet's init(), start(), stop(), and
* destroy() methods.
*
* @author      Arthur van Hoff
*/
extern class AppletViewerPanel extends sun.applet.AppletPanel
{
	/**
	* The document url.
	*/
	@:protected private var documentURL : java.net.URL;
	
	/**
	* The base url.
	*/
	@:protected private var baseURL : java.net.URL;
	
	/**
	* The attributes of the applet.
	*/
	@:protected private var atts : java.util.Hashtable<String, String>;
	
	/**
	* Construct an applet viewer and start the applet.
	*/
	@:overload @:protected private function new(documentURL : java.net.URL, atts : java.util.Hashtable<String, String>) : Void;
	
	/**
	* Get an applet parameter.
	*/
	@:overload @:public override public function getParameter(name : String) : String;
	
	/**
	* Get the document url.
	*/
	@:overload @:public override public function getDocumentBase() : java.net.URL;
	
	/**
	* Get the base url.
	*/
	@:overload @:public override public function getCodeBase() : java.net.URL;
	
	/**
	* Get the width.
	*/
	@:overload @:public override public function getWidth() : Int;
	
	/**
	* Get the height.
	*/
	@:overload @:public override public function getHeight() : Int;
	
	/**
	* Get initial_focus
	*/
	@:overload @:public override public function hasInitialFocus() : Bool;
	
	/**
	* Get the code parameter
	*/
	@:overload @:public override public function getCode() : String;
	
	/**
	* Return the list of jar files if specified.
	* Otherwise return null.
	*/
	@:overload @:public override public function getJarFiles() : String;
	
	/**
	* Return the value of the object param
	*/
	@:overload @:public override public function getSerializedObject() : String;
	
	/**
	* Get the applet context. For now this is
	* also implemented by the AppletPanel class.
	*/
	@:overload @:public override public function getAppletContext() : java.applet.AppletContext;
	
	@:overload @:protected @:static private static function debug(s : String) : Void;
	
	@:overload @:protected @:static private static function debug(s : String, t : java.lang.Throwable) : Void;
	
	
}
