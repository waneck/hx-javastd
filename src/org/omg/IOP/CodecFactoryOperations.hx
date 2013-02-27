package org.omg.IOP;
/**
* org/omg/IOP/CodecFactoryOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
* <code>Codecs</code> are obtained from the <code>CodecFactory</code>. 
* The <code>CodecFactory</code> is obtained through a call to 
* <code>ORB.resolve_initial_references( "CodecFactory" )</code>.
*/
extern interface CodecFactoryOperations
{
	/**
	* Create a <code>Codec</code> of the given encoding.
	* <p>
	* @param enc The encoding for which to create a <code>Codec</code>.
	* @return A <code>Codec</code> obtained with the given encoding.
	* @exception UnknownEncoding thrown if this factory cannot create a 
	*     <code>Codec</code> of the given encoding.
	*/
	@:overload public function create_codec(enc : org.omg.IOP.Encoding) : org.omg.IOP.Codec;
	
	
}