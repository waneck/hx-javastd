package javax.swing.plaf.nimbus;
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
@:internal extern class ShadowEffect extends javax.swing.plaf.nimbus.Effect
{
	/**
	* ShadowEffect - base class with all the standard properties for shadow effects
	*
	* @author Created by Jasper Potts (Jun 18, 2007)
	*/
	@:protected private var color : java.awt.Color;
	
	/** Opacity a float 0-1 for percentage */
	@:protected private var opacity : Single;
	
	/** Angle in degrees between 0-360 */
	@:protected private var angle : Int;
	
	/** Distance in pixels */
	@:protected private var distance : Int;
	
	/** The shadow spread between 0-100 % */
	@:protected private var spread : Int;
	
	/** Size in pixels */
	@:protected private var size : Int;
	
	
}
