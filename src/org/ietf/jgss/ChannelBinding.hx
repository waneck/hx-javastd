package org.ietf.jgss;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class ChannelBinding
{
	/**
	* Create a ChannelBinding object with user supplied address information
	* and data.  <code>null</code> values can be used for any fields which the
	* application does not want to specify.
	*
	* @param initAddr the address of the context initiator.
	* <code>null</code> value can be supplied to indicate that the
	* application does not want to set this value.
	* @param acceptAddr the address of the context
	* acceptor. <code>null</code> value can be supplied to indicate that
	* the application does not want to set this value.
	* @param appData application supplied data to be used as part of the
	* channel bindings. <code>null</code> value can be supplied to
	* indicate that the application does not want to set this value.
	*/
	@:overload @:public public function new(initAddr : java.net.InetAddress, acceptAddr : java.net.InetAddress, appData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates a ChannelBinding object without any addressing information.
	*
	* @param appData application supplied data to be used as part of the
	* channel bindings.
	*/
	@:overload @:public public function new(appData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Get the initiator's address for this channel binding.
	*
	* @return the initiator's address. <code>null</code> is returned if
	* the address has not been set.
	*/
	@:overload @:public public function getInitiatorAddress() : java.net.InetAddress;
	
	/**
	* Get the acceptor's address for this channel binding.
	*
	* @return the acceptor's address. null is returned if the address has
	* not been set.
	*/
	@:overload @:public public function getAcceptorAddress() : java.net.InetAddress;
	
	/**
	* Get the application specified data for this channel binding.
	*
	* @return the application data being used as part of the
	* ChannelBinding. <code>null</code> is returned if no application data
	* has been specified for the channel binding.
	*/
	@:overload @:public public function getApplicationData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Compares two instances of ChannelBinding.
	*
	* @param obj another ChannelBinding to compare this one with
	* @return true if the two ChannelBinding's contain
	* the same values for the initiator and acceptor addresses and the
	* application data.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this ChannelBinding object.
	*
	* @return a hashCode value
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
