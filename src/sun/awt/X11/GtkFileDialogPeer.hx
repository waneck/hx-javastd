package sun.awt.X11;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GtkFileDialogPeer extends sun.awt.X11.XDialogPeer implements java.awt.peer.FileDialogPeer
{
	@:overload @:public public function new(fd : java.awt.FileDialog) : Void;
	
	@:overload @:public @:native override public function toFront() : Void;
	
	@:overload @:public @:native override public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload @:public override public function setVisible(b : Bool) : Void;
	
	@:overload @:public override public function dispose() : Void;
	
	@:overload @:public public function setDirectory(dir : String) : Void;
	
	@:overload @:public public function setFile(file : String) : Void;
	
	@:overload @:public public function setFilenameFilter(filter : java.io.FilenameFilter) : Void;
	
	
}
