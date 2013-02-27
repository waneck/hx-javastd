package sun.awt.X11;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XLabelPeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.LabelPeer
{
	/**
	* Minimum size.
	*/
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* Paint the label
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function setText(text : String) : Void;
	
	@:overload override public function setFont(f : java.awt.Font) : Void;
	
	@:overload public function setAlignment(align : Int) : Void;
	
	
}
