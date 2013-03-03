package javax.imageio.plugins.bmp;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BMPImageWriteParam extends javax.imageio.ImageWriteParam
{
	/**
	* Constructs a <code>BMPImageWriteParam</code> set to use a given
	* <code>Locale</code> and with default values for all parameters.
	*
	* @param locale a <code>Locale</code> to be used to localize
	* compression type names and quality descriptions, or
	* <code>null</code>.
	*/
	@:overload @:public public function new(locale : java.util.Locale) : Void;
	
	/**
	* Constructs an <code>BMPImageWriteParam</code> object with default
	* values for all parameters and a <code>null</code> <code>Locale</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* If set, the data will be written out in a top-down manner, the first
	* scanline being written first.
	*
	* @param topDown whether the data are written in top-down order.
	*/
	@:overload @:public public function setTopDown(topDown : Bool) : Void;
	
	/**
	* Returns the value of the <code>topDown</code> parameter.
	* The default is <code>false</code>.
	*
	* @return whether the data are written in top-down order.
	*/
	@:overload @:public public function isTopDown() : Bool;
	
	
}
