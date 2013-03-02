package javax.xml.ws.soap;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MTOMFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the MTOMFeature
	*/
	public static var ID(default, null) : String;
	
	/**
	* Property for MTOM threshold value. This property serves as a hint when
	* MTOM is enabled, binary data above this size in bytes SHOULD be sent
	* as attachment.
	* The value of this property MUST always be >= 0. Default value is 0.
	*/
	private var threshold : Int;
	
	/**
	* Create an <code>MTOMFeature</code>.
	* The instance created will be enabled.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an <code>MTOMFeature</code>.
	*
	* @param enabled specifies if this feature should be enabled or not
	*/
	@:overload public function new(enabled : Bool) : Void;
	
	/**
	* Creates an <code>MTOMFeature</code>.
	* The instance created will be enabled.
	*
	* @param threshold the size in bytes that binary data SHOULD be before
	* being sent as an attachment.
	*
	* @throws WebServiceException if threshold is < 0
	*/
	@:overload public function new(threshold : Int) : Void;
	
	/**
	* Creates an <code>MTOMFeature</code>.
	*
	* @param enabled specifies if this feature should be enabled or not
	* @param threshold the size in bytes that binary data SHOULD be before
	* being sent as an attachment.
	*
	* @throws WebServiceException if threshold is < 0
	*/
	@:overload public function new(enabled : Bool, threshold : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getID() : String;
	
	/**
	* Gets the threshold value used to determine when binary data
	* should be sent as an attachment.
	*
	* @return the current threshold size in bytes
	*/
	@:overload public function getThreshold() : Int;
	
	
}
