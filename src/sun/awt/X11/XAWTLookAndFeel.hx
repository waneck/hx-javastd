package sun.awt.X11;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XAWTLookAndFeel extends com.sun.java.swing.plaf.motif.MotifLookAndFeel
{
	/**
	* Load the SystemColors into the defaults table.  The keys
	* for SystemColor defaults are the same as the names of
	* the public fields in SystemColor.  If the table is being
	* created on a native Motif platform we use the SystemColor
	* values, otherwise we create color objects whose values match
	* the default CDE/Motif colors.
	*/
	@:overload @:protected override private function initSystemColorDefaults(table : javax.swing.UIDefaults) : Void;
	
	@:overload @:protected override private function initComponentDefaults(table : javax.swing.UIDefaults) : Void;
	
	
}
