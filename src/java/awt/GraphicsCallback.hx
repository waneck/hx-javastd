package java.awt;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GraphicsCallback extends sun.awt.SunGraphicsCallback
{
	
}
@:native('java$awt$GraphicsCallback$PaintCallback') @:internal extern class GraphicsCallback_PaintCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PrintCallback') @:internal extern class GraphicsCallback_PrintCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PaintAllCallback') @:internal extern class GraphicsCallback_PaintAllCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PrintAllCallback') @:internal extern class GraphicsCallback_PrintAllCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PeerPaintCallback') @:internal extern class GraphicsCallback_PeerPaintCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PeerPrintCallback') @:internal extern class GraphicsCallback_PeerPrintCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PaintHeavyweightComponentsCallback') @:internal extern class GraphicsCallback_PaintHeavyweightComponentsCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
@:native('java$awt$GraphicsCallback$PrintHeavyweightComponentsCallback') @:internal extern class GraphicsCallback_PrintHeavyweightComponentsCallback extends java.awt.GraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	
}
