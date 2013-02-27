package javax.swing.plaf.metal;
/*
* Copyright (c) 2001, 2002, Oracle and/or its affiliates. All rights reserved.
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
* A high contrast theme. This is used on Windows if the system property
* awt.highContrast.on is true.
*
* @author Michael C. Albers
*/
@:internal extern class MetalHighContrastTheme extends javax.swing.plaf.metal.DefaultMetalTheme
{
	@:overload override public function getName() : String;
	
	@:overload override private function getPrimary1() : javax.swing.plaf.ColorUIResource;
	
	@:overload override private function getPrimary2() : javax.swing.plaf.ColorUIResource;
	
	@:overload override private function getPrimary3() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getPrimaryControlHighlight() : javax.swing.plaf.ColorUIResource;
	
	@:overload override private function getSecondary2() : javax.swing.plaf.ColorUIResource;
	
	@:overload override private function getSecondary3() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getControlHighlight() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getFocusColor() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getTextHighlightColor() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getHighlightedTextColor() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getMenuSelectedBackground() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getMenuSelectedForeground() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getAcceleratorForeground() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function getAcceleratorSelectedForeground() : javax.swing.plaf.ColorUIResource;
	
	@:overload override public function addCustomEntriesToTable(table : javax.swing.UIDefaults) : Void;
	
	
}
