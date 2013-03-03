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
/**
* This is a utility class used within the per-message GSSContext
* methods to convey per-message properties.<p>
*
* When used with the GSSContext interface's wrap and getMIC methods, an
* instance of this class is used to indicate the desired
* Quality-of-Protection (QOP) and to request if confidentiality services
* are to be applied to caller supplied data (wrap only).  To request
* default QOP, the value of 0 should be used for QOP.<p>
*
* When used with the unwrap and verifyMIC methods of the GSSContext
* interface, an instance of this class will be used to indicate the
* applied QOP and confidentiality services over the supplied message.
* In the case of verifyMIC, the confidentiality state will always be
* <code>false</code>.  Upon return from these methods, this object will also
* contain any supplementary status values applicable to the processed
* token.  The supplementary status values can indicate old tokens, out
* of sequence tokens, gap tokens or duplicate tokens.<p>
*
* @see GSSContext#wrap
* @see GSSContext#unwrap
* @see GSSContext#getMIC
* @see GSSContext#verifyMIC
*
* @author Mayank Upadhyay
* @since 1.4
*/
@:require(java4) extern class MessageProp
{
	/**
	* Constructor which sets the desired privacy state. The QOP value used
	* is 0.
	*
	* @param privState the privacy (i.e. confidentiality) state
	*/
	@:overload @:public public function new(privState : Bool) : Void;
	
	/**
	* Constructor which sets the values for the qop and privacy state.
	*
	* @param qop the QOP value
	* @param privState the privacy (i.e. confidentiality) state
	*/
	@:overload @:public public function new(qop : Int, privState : Bool) : Void;
	
	/**
	* Retrieves the QOP value.
	*
	* @return an int representing the QOP value
	* @see #setQOP
	*/
	@:overload @:public public function getQOP() : Int;
	
	/**
	* Retrieves the privacy state.
	*
	* @return true if the privacy (i.e., confidentiality) state is true,
	* false otherwise.
	* @see #setPrivacy
	*/
	@:overload @:public public function getPrivacy() : Bool;
	
	/**
	* Sets the QOP value.
	*
	* @param qop the int value to set the QOP to
	* @see #getQOP
	*/
	@:overload @:public public function setQOP(qop : Int) : Void;
	
	/**
	* Sets the privacy state.
	*
	* @param privState true is the privacy (i.e., confidentiality) state
	* is true, false otherwise.
	* @see #getPrivacy
	*/
	@:overload @:public public function setPrivacy(privState : Bool) : Void;
	
	/**
	* Tests if this is a duplicate of an earlier token.
	*
	* @return true if this is a duplicate, false otherwise.
	*/
	@:overload @:public public function isDuplicateToken() : Bool;
	
	/**
	* Tests if this token's validity period has expired, i.e., the token
	* is too old to be checked for duplication.
	*
	* @return true if the token's validity period has expired, false
	* otherwise.
	*/
	@:overload @:public public function isOldToken() : Bool;
	
	/**
	* Tests if a later token had already been processed.
	*
	* @return true if a later token had already been processed, false otherwise.
	*/
	@:overload @:public public function isUnseqToken() : Bool;
	
	/**
	* Tests if an expected token was not received, i.e., one or more
	* predecessor tokens have not yet been successfully processed.
	*
	* @return true if an expected per-message token was not received,
	* false otherwise.
	*/
	@:overload @:public public function isGapToken() : Bool;
	
	/**
	* Retrieves the minor status code that the underlying mechanism might
	* have set for this per-message operation.
	*
	* @return the int minor status
	*/
	@:overload @:public public function getMinorStatus() : Int;
	
	/**
	* Retrieves a string explaining the minor status code.
	*
	* @return a String corresponding to the minor status
	* code. <code>null</code> will be returned when no minor status code
	* has been set.
	*/
	@:overload @:public public function getMinorString() : String;
	
	/**
	* This method sets the state for the supplementary information flags
	* and the minor status in MessageProp.  It is not used by the
	* application but by the GSS implementation to return this information
	* to the caller of a per-message context method.
	*
	* @param duplicate true if the token was a duplicate of an earlier
	* token, false otherwise
	* @param old true if the token's validity period has expired, false
	* otherwise
	* @param unseq true if a later token has already been processed, false
	* otherwise
	* @param gap true if one or more predecessor tokens have not yet been
	* successfully processed, false otherwise
	* @param minorStatus the int minor status code for the per-message
	* operation
	* @param  minorString the textual representation of the minorStatus value
	*/
	@:overload @:public public function setSupplementaryStates(duplicate : Bool, old : Bool, unseq : Bool, gap : Bool, minorStatus : Int, minorString : String) : Void;
	
	
}
