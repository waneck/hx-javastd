package org.omg.IOP;
/**
* org/omg/IOP/CodecOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
* The formats of IOR components and service context data used by ORB 
* services are often defined as CDR encapsulations encoding instances 
* of IDL defined data types. The <code>Codec</code> provides a mechanism 
* to transfer these components between their IDL data types and their CDR 
* encapsulation representations. 
* <p>
* A <code>Codec</code> is obtained from the <code>CodecFactory</code>. 
* The <code>CodecFactory</code> is obtained through a call to 
* <code>ORB.resolve_initial_references( "CodecFactory" )</code>.
*/
extern interface CodecOperations
{
	/**
	* Converts the given any into a byte array based on the encoding 
	* format effective for this <code>Codec</code>. 
	*
	* @param data The data, in the form of an any, to be encoded into 
	*     a byte array.
	* @return A byte array containing the encoded Any. This byte array 
	*     contains both the <code>TypeCode</code> and the data of the type.
	* @exception InvalidTypeForEncoding thrown if the type is not valid for 
	*     the encoding format effective for this <code>Codec</code>.
	*/
	@:overload public function encode(data : org.omg.CORBA.Any) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decodes the given byte array into an Any based on the encoding 
	* format effective for this <code>Codec</code>. 
	* 
	* @param data The data, in the form of a byte array, to be decoded into 
	*     an Any. 
	* @return An Any containing the data from the decoded byte array.
	* @exception FormatMismatch is thrown if the byte array cannot be 
	*     decoded into an Any. 
	*/
	@:overload public function decode(data : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Any;
	
	/**
	* Converts the given any into a byte array based on the encoding 
	* format effective for this Codec. Only the data from the Any is 
	* encoded, not the <code>TypeCode</code>. 
	*
	* @param data The data, in the form of an Any, to be encoded into 
	*     a byte array. 
	* @return A byte array containing the data from the encoded any.
	* @exception InvalidTypeForEncoding thrown if the type is not valid for 
	*     the encoding format effective for this <code>Codec</code>.
	*/
	@:overload public function encode_value(data : org.omg.CORBA.Any) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decodes the given byte array into an Any based on the given 
	* <code>TypeCode</code> and the encoding format effective for 
	* this <code>Codec</code>. 
	*
	* @param data The data, in the form of a byte array, to be decoded 
	*     into an Any. 
	* @param tc The TypeCode to be used to decode the data. 
	* @return An Any containing the data from the decoded byte array.
	* @exception FormatMismatch thrown if the byte array cannot be 
	*     decoded into an Any. 
	*/
	@:overload public function decode_value(data : java.NativeArray<java.StdTypes.Int8>, tc : org.omg.CORBA.TypeCode) : org.omg.CORBA.Any;
	
	
}
