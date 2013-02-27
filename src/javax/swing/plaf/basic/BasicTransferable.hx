package javax.swing.plaf.basic;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class BasicTransferable implements java.awt.datatransfer.Transferable implements javax.swing.plaf.UIResource
{
	/**
	* A transferable implementation for the default data transfer of some Swing
	* components.
	*
	* @author  Timothy Prinzing
	*/
	private var plainData : String;
	
	private var htmlData : String;
	
	@:overload public function new(plainData : String, htmlData : String) : Void;
	
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
	
	@:overload private function isRicherFlavor(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Some subclasses will have flavors that are more descriptive than HTML
	* or plain text.  If this method returns a non-null value, it will be
	* placed at the start of the array of supported flavors.
	*/
	@:overload private function getRicherFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	@:overload private function getRicherData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	/**
	* Returns whether or not the specified data flavor is an HTML flavor that
	* is supported.
	* @param flavor the requested flavor for the data
	* @return boolean indicating whether or not the data flavor is supported
	*/
	@:overload private function isHTMLFlavor(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Should the HTML flavors be offered?  If so, the method
	* getHTMLData should be implemented to provide something reasonable.
	*/
	@:overload private function isHTMLSupported() : Bool;
	
	/**
	* Fetch the data in a text/html format
	*/
	@:overload private function getHTMLData() : String;
	
	/**
	* Returns whether or not the specified data flavor is an plain flavor that
	* is supported.
	* @param flavor the requested flavor for the data
	* @return boolean indicating whether or not the data flavor is supported
	*/
	@:overload private function isPlainFlavor(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Should the plain text flavors be offered?  If so, the method
	* getPlainData should be implemented to provide something reasonable.
	*/
	@:overload private function isPlainSupported() : Bool;
	
	/**
	* Fetch the data in a text/plain format.
	*/
	@:overload private function getPlainData() : String;
	
	/**
	* Returns whether or not the specified data flavor is a String flavor that
	* is supported.
	* @param flavor the requested flavor for the data
	* @return boolean indicating whether or not the data flavor is supported
	*/
	@:overload private function isStringFlavor(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	
}
