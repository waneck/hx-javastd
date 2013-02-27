package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifPopupMenuUI extends javax.swing.plaf.basic.BasicPopupMenuUI
{
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/* This has to deal with the fact that the title may be wider than
	the widest child component.
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload private function createChangeListener(m : javax.swing.JPopupMenu) : javax.swing.event.ChangeListener;
	
	@:overload override public function isPopupTrigger(e : java.awt.event.MouseEvent) : Bool;
	
	
}
