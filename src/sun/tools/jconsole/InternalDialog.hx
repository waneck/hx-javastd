package sun.tools.jconsole;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Used instead of JDialog in a JDesktopPane/JInternalFrame environment.
*/
extern class InternalDialog extends javax.swing.JInternalFrame
{
	@:protected private var statusBar : javax.swing.JLabel;
	
	@:overload @:public public function new(jConsole : sun.tools.jconsole.JConsole, title : String, modal : Bool) : Void;
	
	@:overload @:public public function setLocationRelativeTo(c : java.awt.Component) : Void;
	
	
}
@:native('sun$tools$jconsole$InternalDialog$MastheadIcon') extern class InternalDialog_MastheadIcon implements javax.swing.Icon
{
	@:overload @:public public function new(title : String) : Void;
	
	@:overload @:public @:synchronized public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
