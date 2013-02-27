package java.applet;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface AppletStub
{
	/**
	* Determines if the applet is active. An applet is active just
	* before its <code>start</code> method is called. It becomes
	* inactive just before its <code>stop</code> method is called.
	*
	* @return  <code>true</code> if the applet is active;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isActive() : Bool;
	
	/**
	* Gets the URL of the document in which the applet is embedded.
	* For example, suppose an applet is contained
	* within the document:
	* <blockquote><pre>
	*    http://java.sun.com/products/jdk/1.2/index.html
	* </pre></blockquote>
	* The document base is:
	* <blockquote><pre>
	*    http://java.sun.com/products/jdk/1.2/index.html
	* </pre></blockquote>
	*
	* @return  the {@link java.net.URL} of the document that contains the
	*          applet.
	* @see     java.applet.AppletStub#getCodeBase()
	*/
	@:overload public function getDocumentBase() : java.net.URL;
	
	/**
	* Gets the base URL. This is the URL of the directory which contains the applet.
	*
	* @return  the base {@link java.net.URL} of
	*          the directory which contains the applet.
	* @see     java.applet.AppletStub#getDocumentBase()
	*/
	@:overload public function getCodeBase() : java.net.URL;
	
	/**
	* Returns the value of the named parameter in the HTML tag. For
	* example, if an applet is specified as
	* <blockquote><pre>
	* &lt;applet code="Clock" width=50 height=50&gt;
	* &lt;param name=Color value="blue"&gt;
	* &lt;/applet&gt;
	* </pre></blockquote>
	* <p>
	* then a call to <code>getParameter("Color")</code> returns the
	* value <code>"blue"</code>.
	*
	* @param   name   a parameter name.
	* @return  the value of the named parameter,
	* or <tt>null</tt> if not set.
	*/
	@:overload public function getParameter(name : String) : String;
	
	/**
	* Returns the applet's context.
	*
	* @return  the applet's context.
	*/
	@:overload public function getAppletContext() : java.applet.AppletContext;
	
	/**
	* Called when the applet wants to be resized.
	*
	* @param   width    the new requested width for the applet.
	* @param   height   the new requested height for the applet.
	*/
	@:overload public function appletResize(width : Int, height : Int) : Void;
	
	
}
