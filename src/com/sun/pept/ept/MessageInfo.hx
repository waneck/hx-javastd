package com.sun.pept.ept;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/** Java interface "MessageInfo.java" generated from Poseidon for UML.
*  Poseidon for UML is developed by <A HREF="http://www.gentleware.com">Gentleware</A>.
*  Generated with <A HREF="http://jakarta.apache.org/velocity/">velocity</A> template engine.
*/
/**
* <p>
*
* @author Dr. Harold Carr
* </p>
*/
extern interface MessageInfo extends com.sun.pept.presentation.MessageStruct
{
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a EPTFactory with ...
	* </p>
	*/
	@:overload public function getEPTFactory() : com.sun.pept.ept.EPTFactory;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a MessageDispatcher with ...
	* </p>
	*/
	@:overload public function getMessageDispatcher() : com.sun.pept.protocol.MessageDispatcher;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Encoder with ...
	* </p>
	*/
	@:overload public function getEncoder() : com.sun.pept.encoding.Encoder;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Decoder with ...
	* </p>
	*/
	@:overload public function getDecoder() : com.sun.pept.encoding.Decoder;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Connection with ...
	* </p>
	*/
	@:overload public function getConnection() : com.sun.pept.transport.Connection;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param eptFactory ...
	* </p>
	*/
	@:overload public function setEPTFactory(eptFactory : com.sun.pept.ept.EPTFactory) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param messageDispatcher ...
	* </p>
	*/
	@:overload public function setMessageDispatcher(messageDispatcher : com.sun.pept.protocol.MessageDispatcher) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param encoder ...
	* </p>
	*/
	@:overload public function setEncoder(encoder : com.sun.pept.encoding.Encoder) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param decoder ...
	* </p>
	*/
	@:overload public function setDecoder(decoder : com.sun.pept.encoding.Decoder) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param connection ...
	* </p>
	*/
	@:overload public function setConnection(connection : com.sun.pept.transport.Connection) : Void;
	
	
}
