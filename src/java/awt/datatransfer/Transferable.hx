package java.awt.datatransfer;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface Transferable
{
	/**
	* Returns an array of DataFlavor objects indicating the flavors the data
	* can be provided in.  The array should be ordered according to preference
	* for providing the data (from most richly descriptive to least descriptive).
	* @return an array of data flavors in which this data can be transferred
	*/
	@:overload public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns whether or not the specified data flavor is supported for
	* this object.
	* @param flavor the requested flavor for the data
	* @return boolean indicating whether or not the data flavor is supported
	*/
	@:overload public function isDataFlavorSupported(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns an object which represents the data to be transferred.  The class
	* of the object returned is defined by the representation class of the flavor.
	*
	* @param flavor the requested flavor for the data
	* @see DataFlavor#getRepresentationClass
	* @exception IOException                if the data is no longer available
	*              in the requested flavor.
	* @exception UnsupportedFlavorException if the requested data flavor is
	*              not supported.
	*/
	@:overload public function getTransferData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	
}
