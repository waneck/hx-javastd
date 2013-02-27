package javax.smartcardio;
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
extern class CommandAPDU implements java.io.Serializable
{
	/**
	* Constructs a CommandAPDU from a byte array containing the complete
	* APDU contents (header and body).
	*
	* <p>Note that the apdu bytes are copied to protect against
	* subsequent modification.
	*
	* @param apdu the complete command APDU
	*
	* @throws NullPointerException if apdu is null
	* @throws IllegalArgumentException if apdu does not contain a valid
	*   command APDU
	*/
	@:overload public function new(apdu : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a CommandAPDU from a byte array containing the complete
	* APDU contents (header and body). The APDU starts at the index
	* <code>apduOffset</code> in the byte array and is <code>apduLength</code>
	* bytes long.
	*
	* <p>Note that the apdu bytes are copied to protect against
	* subsequent modification.
	*
	* @param apdu the complete command APDU
	* @param apduOffset the offset in the byte array at which the apdu
	*   data begins
	* @param apduLength the length of the APDU
	*
	* @throws NullPointerException if apdu is null
	* @throws IllegalArgumentException if apduOffset or apduLength are
	*   negative or if apduOffset + apduLength are greater than apdu.length,
	*   or if the specified bytes are not a valid APDU
	*/
	@:overload public function new(apdu : java.NativeArray<java.StdTypes.Int8>, apduOffset : Int, apduLength : Int) : Void;
	
	/**
	* Creates a CommandAPDU from the ByteBuffer containing the complete APDU
	* contents (header and body).
	* The buffer's <code>position</code> must be set to the start of the APDU,
	* its <code>limit</code> to the end of the APDU. Upon return, the buffer's
	* <code>position</code> is equal to its limit; its limit remains unchanged.
	*
	* <p>Note that the data in the ByteBuffer is copied to protect against
	* subsequent modification.
	*
	* @param apdu the ByteBuffer containing the complete APDU
	*
	* @throws NullPointerException if apdu is null
	* @throws IllegalArgumentException if apdu does not contain a valid
	*   command APDU
	*/
	@:overload public function new(apdu : java.nio.ByteBuffer) : Void;
	
	/**
	* Constructs a CommandAPDU from the four header bytes. This is case 1
	* in ISO 7816, no command body.
	*
	* @param cla the class byte CLA
	* @param ins the instruction byte INS
	* @param p1 the parameter byte P1
	* @param p2 the parameter byte P2
	*/
	@:overload public function new(cla : Int, ins : Int, p1 : Int, p2 : Int) : Void;
	
	/**
	* Constructs a CommandAPDU from the four header bytes and the expected
	* response data length. This is case 2 in ISO 7816, empty command data
	* field with Ne specified. If Ne is 0, the APDU is encoded as ISO 7816
	* case 1.
	*
	* @param cla the class byte CLA
	* @param ins the instruction byte INS
	* @param p1 the parameter byte P1
	* @param p2 the parameter byte P2
	* @param ne the maximum number of expected data bytes in a response APDU
	*
	* @throws IllegalArgumentException if ne is negative or greater than
	*   65536
	*/
	@:overload public function new(cla : Int, ins : Int, p1 : Int, p2 : Int, ne : Int) : Void;
	
	/**
	* Constructs a CommandAPDU from the four header bytes and command data.
	* This is case 3 in ISO 7816, command data present and Ne absent. The
	* value Nc is taken as data.length. If <code>data</code> is null or
	* its length is 0, the APDU is encoded as ISO 7816 case 1.
	*
	* <p>Note that the data bytes are copied to protect against
	* subsequent modification.
	*
	* @param cla the class byte CLA
	* @param ins the instruction byte INS
	* @param p1 the parameter byte P1
	* @param p2 the parameter byte P2
	* @param data the byte array containing the data bytes of the command body
	*
	* @throws IllegalArgumentException if data.length is greater than 65535
	*/
	@:overload public function new(cla : Int, ins : Int, p1 : Int, p2 : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a CommandAPDU from the four header bytes and command data.
	* This is case 3 in ISO 7816, command data present and Ne absent. The
	* value Nc is taken as dataLength. If <code>dataLength</code>
	* is 0, the APDU is encoded as ISO 7816 case 1.
	*
	* <p>Note that the data bytes are copied to protect against
	* subsequent modification.
	*
	* @param cla the class byte CLA
	* @param ins the instruction byte INS
	* @param p1 the parameter byte P1
	* @param p2 the parameter byte P2
	* @param data the byte array containing the data bytes of the command body
	* @param dataOffset the offset in the byte array at which the data
	*   bytes of the command body begin
	* @param dataLength the number of the data bytes in the command body
	*
	* @throws NullPointerException if data is null and dataLength is not 0
	* @throws IllegalArgumentException if dataOffset or dataLength are
	*   negative or if dataOffset + dataLength are greater than data.length
	*   or if dataLength is greater than 65535
	*/
	@:overload public function new(cla : Int, ins : Int, p1 : Int, p2 : Int, data : java.NativeArray<java.StdTypes.Int8>, dataOffset : Int, dataLength : Int) : Void;
	
	/**
	* Constructs a CommandAPDU from the four header bytes, command data,
	* and expected response data length. This is case 4 in ISO 7816,
	* command data and Ne present. The value Nc is taken as data.length
	* if <code>data</code> is non-null and as 0 otherwise. If Ne or Nc
	* are zero, the APDU is encoded as case 1, 2, or 3 per ISO 7816.
	*
	* <p>Note that the data bytes are copied to protect against
	* subsequent modification.
	*
	* @param cla the class byte CLA
	* @param ins the instruction byte INS
	* @param p1 the parameter byte P1
	* @param p2 the parameter byte P2
	* @param data the byte array containing the data bytes of the command body
	* @param ne the maximum number of expected data bytes in a response APDU
	*
	* @throws IllegalArgumentException if data.length is greater than 65535
	*   or if ne is negative or greater than 65536
	*/
	@:overload public function new(cla : Int, ins : Int, p1 : Int, p2 : Int, data : java.NativeArray<java.StdTypes.Int8>, ne : Int) : Void;
	
	/**
	* Constructs a CommandAPDU from the four header bytes, command data,
	* and expected response data length. This is case 4 in ISO 7816,
	* command data and Le present. The value Nc is taken as
	* <code>dataLength</code>.
	* If Ne or Nc
	* are zero, the APDU is encoded as case 1, 2, or 3 per ISO 7816.
	*
	* <p>Note that the data bytes are copied to protect against
	* subsequent modification.
	*
	* @param cla the class byte CLA
	* @param ins the instruction byte INS
	* @param p1 the parameter byte P1
	* @param p2 the parameter byte P2
	* @param data the byte array containing the data bytes of the command body
	* @param dataOffset the offset in the byte array at which the data
	*   bytes of the command body begin
	* @param dataLength the number of the data bytes in the command body
	* @param ne the maximum number of expected data bytes in a response APDU
	*
	* @throws NullPointerException if data is null and dataLength is not 0
	* @throws IllegalArgumentException if dataOffset or dataLength are
	*   negative or if dataOffset + dataLength are greater than data.length,
	*   or if ne is negative or greater than 65536,
	*   or if dataLength is greater than 65535
	*/
	@:overload public function new(cla : Int, ins : Int, p1 : Int, p2 : Int, data : java.NativeArray<java.StdTypes.Int8>, dataOffset : Int, dataLength : Int, ne : Int) : Void;
	
	/**
	* Returns the value of the class byte CLA.
	*
	* @return the value of the class byte CLA.
	*/
	@:overload public function getCLA() : Int;
	
	/**
	* Returns the value of the instruction byte INS.
	*
	* @return the value of the instruction byte INS.
	*/
	@:overload public function getINS() : Int;
	
	/**
	* Returns the value of the parameter byte P1.
	*
	* @return the value of the parameter byte P1.
	*/
	@:overload public function getP1() : Int;
	
	/**
	* Returns the value of the parameter byte P2.
	*
	* @return the value of the parameter byte P2.
	*/
	@:overload public function getP2() : Int;
	
	/**
	* Returns the number of data bytes in the command body (Nc) or 0 if this
	* APDU has no body. This call is equivalent to
	* <code>getData().length</code>.
	*
	* @return the number of data bytes in the command body or 0 if this APDU
	* has no body.
	*/
	@:overload public function getNc() : Int;
	
	/**
	* Returns a copy of the data bytes in the command body. If this APDU as
	* no body, this method returns a byte array with length zero.
	*
	* @return a copy of the data bytes in the command body or the empty
	*    byte array if this APDU has no body.
	*/
	@:overload public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the maximum number of expected data bytes in a response
	* APDU (Ne).
	*
	* @return the maximum number of expected data bytes in a response APDU.
	*/
	@:overload public function getNe() : Int;
	
	/**
	* Returns a copy of the bytes in this APDU.
	*
	* @return a copy of the bytes in this APDU.
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a string representation of this command APDU.
	*
	* @return a String representation of this command APDU.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified object with this command APDU for equality.
	* Returns true if the given object is also a CommandAPDU and its bytes are
	* identical to the bytes in this CommandAPDU.
	*
	* @param obj the object to be compared for equality with this command APDU
	* @return true if the specified object is equal to this command APDU
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this command APDU.
	*
	* @return the hash code value for this command APDU.
	*/
	@:overload public function hashCode() : Int;
	
	
}
