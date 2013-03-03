package java.awt.dnd;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern interface Autoscroll
{
	/**
	* This method returns the <code>Insets</code> describing
	* the autoscrolling region or border relative
	* to the geometry of the implementing Component.
	* <P>
	* This value is read once by the <code>DropTarget</code>
	* upon entry of the drag <code>Cursor</code>
	* into the associated <code>Component</code>.
	* <P>
	* @return the Insets
	*/
	@:overload @:public public function getAutoscrollInsets() : java.awt.Insets;
	
	/**
	* notify the <code>Component</code> to autoscroll
	* <P>
	* @param cursorLocn A <code>Point</code> indicating the
	* location of the cursor that triggered this operation.
	*/
	@:overload @:public public function autoscroll(cursorLocn : java.awt.Point) : Void;
	
	
}
