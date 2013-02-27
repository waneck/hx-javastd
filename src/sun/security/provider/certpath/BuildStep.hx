package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BuildStep
{
	/**
	* result code associated with a certificate that may continue a path from
	* the current certificate.
	*/
	public static var POSSIBLE(default, null) : Int;
	
	/**
	* result code associated with a certificate that was tried, but that
	* represents an unsuccessful path, so the certificate has been backed out
	* to allow backtracking to the next possible path.
	*/
	public static var BACK(default, null) : Int;
	
	/**
	* result code associated with a certificate that successfully continues the
	* current path, but does not yet reach the target.
	*/
	public static var FOLLOW(default, null) : Int;
	
	/**
	* result code associated with a certificate that represents the end of the
	* last possible path, where no path successfully reached the target.
	*/
	public static var FAIL(default, null) : Int;
	
	/**
	* result code associated with a certificate that represents the end of a
	* path that successfully reaches the target.
	*/
	public static var SUCCEED(default, null) : Int;
	
	/**
	* construct a BuildStep
	*
	* @param vtx description of the vertex at this step
	* @param res result, where result is one of POSSIBLE, BACK,
	*            FOLLOW, FAIL, SUCCEED
	*/
	@:overload public function new(vtx : sun.security.provider.certpath.Vertex, res : Int) : Void;
	
	/**
	* return vertex description for this build step
	*
	* @returns Vertex
	*/
	@:overload public function getVertex() : sun.security.provider.certpath.Vertex;
	
	/**
	* return the certificate associated with this build step
	*
	* @returns X509Certificate
	*/
	@:overload public function getCertificate() : java.security.cert.X509Certificate;
	
	/**
	* return string form of issuer name from certificate associated with this
	* build step
	*
	* @returns String form of issuer name or null, if no certificate.
	*/
	@:overload public function getIssuerName() : String;
	
	/**
	* return string form of issuer name from certificate associated with this
	* build step, or a default name if no certificate associated with this
	* build step, or if issuer name could not be obtained from the certificate.
	*
	* @param defaultName name to use as default if unable to return an issuer
	* name from the certificate, or if no certificate.
	* @returns String form of issuer name or defaultName, if no certificate or
	* exception received while trying to extract issuer name from certificate.
	*/
	@:overload public function getIssuerName(defaultName : String) : String;
	
	/**
	* return string form of subject name from certificate associated with this
	* build step.
	*
	* @returns String form of subject name or null, if no certificate.
	*/
	@:overload public function getSubjectName() : String;
	
	/**
	* return string form of subject name from certificate associated with this
	* build step, or a default name if no certificate associated with this
	* build step, or if subject name could not be obtained from the
	* certificate.
	*
	* @param defaultName name to use as default if unable to return a subject
	* name from the certificate, or if no certificate.
	* @returns String form of subject name or defaultName, if no certificate or
	* if an exception was received while attempting to extract the subject name
	* from the certificate.
	*/
	@:overload public function getSubjectName(defaultName : String) : String;
	
	/**
	* return the exception associated with this build step.
	*
	* @returns Throwable
	*/
	@:overload public function getThrowable() : java.lang.Throwable;
	
	/**
	* return the result code associated with this build step.  The result codes
	* are POSSIBLE, FOLLOW, BACK, FAIL, SUCCEED.
	*
	* @returns int result code
	*/
	@:overload public function getResult() : Int;
	
	/**
	* return a string representing the meaning of the result code associated
	* with this build step.
	*
	* @param   res    result code
	* @returns String string representing meaning of the result code
	*/
	@:overload public function resultToString(res : Int) : String;
	
	/**
	* return a string representation of this build step, showing minimal
	* detail.
	*
	* @returns String
	*/
	@:overload public function toString() : String;
	
	/**
	* return a string representation of this build step, showing all detail of
	* the vertex state appropriate to the result of this build step, and the
	* certificate contents.
	*
	* @returns String
	*/
	@:overload public function verboseToString() : String;
	
	/**
	* return a string representation of this build step, including all possible
	* detail of the vertex state, but not including the certificate contents.
	*
	* @returns String
	*/
	@:overload public function fullToString() : String;
	
	
}
