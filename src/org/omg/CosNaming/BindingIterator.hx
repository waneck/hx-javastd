package org.omg.CosNaming;
/**
* org/omg/CosNaming/BindingIterator.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/**
* The BindingIterator interface allows a client to iterate through
* the bindings using the next_one or next_n operations.
* 
* The bindings iterator is obtained by using the <tt>list</tt>
* method on the <tt>NamingContext</tt>. 
* @see org.omg.CosNaming.NamingContext#list
*/
extern interface BindingIterator extends org.omg.CosNaming.BindingIteratorOperations extends org.omg.CORBA.Object extends org.omg.CORBA.portable.IDLEntity
{
	
}