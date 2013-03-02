package com.sun.mirror.apt;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* Event for the completion of a round of annotation processing.
*
* <p>While this class extends the serializable <tt>EventObject</tt>, it
* cannot meaningfully be serialized because all of the annotation
* processing tool's internal state would potentially be needed.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  This class has no direct
* analog in the standardized API because the different round model
* renders it unnecessary.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern class RoundCompleteEvent extends java.util.EventObject
{
	/**
	* The current <tt>AnnotationProcessorEnvironment</tt> is regarded
	* as the source of events.
	*
	* @param source The source of events
	* @param rs     The state of the round
	*/
	@:overload private function new(source : com.sun.mirror.apt.AnnotationProcessorEnvironment, rs : com.sun.mirror.apt.RoundState) : Void;
	
	/**
	* Return round state.
	*/
	@:overload public function getRoundState() : com.sun.mirror.apt.RoundState;
	
	/**
	* Return source.
	*/
	@:overload public function getSource() : com.sun.mirror.apt.AnnotationProcessorEnvironment;
	
	
}
