package sun.print;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PrinterGraphicsDevice extends java.awt.GraphicsDevice
{
	@:overload private function new(conf : java.awt.GraphicsConfiguration, id : String) : Void;
	
	@:overload override public function getType() : Int;
	
	@:overload override public function getIDstring() : String;
	
	@:overload override public function getConfigurations() : java.NativeArray<java.awt.GraphicsConfiguration>;
	
	@:overload override public function getDefaultConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload override public function setFullScreenWindow(w : java.awt.Window) : Void;
	
	@:overload override public function getFullScreenWindow() : java.awt.Window;
	
	
}
