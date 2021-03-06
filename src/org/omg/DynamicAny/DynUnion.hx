package org.omg.DynamicAny;
/**
* org/omg/DynamicAny/DynUnion.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/DynamicAny/DynamicAny.idl
* Thursday, February 21, 2013 9:14:03 AM UTC
*/
/**
* DynUnion objects support the manipulation of IDL unions.
* A union can have only two valid current positions:
* <UL>
* <LI>zero, which denotes the discriminator
* <LI>one, which denotes the active member
* </UL>
* The component_count value for a union depends on the current discriminator:
* it is 2 for a union whose discriminator indicates a named member, and 1 otherwise.
*/
extern interface DynUnion extends org.omg.DynamicAny.DynUnionOperations extends org.omg.DynamicAny.DynAny extends org.omg.CORBA.portable.IDLEntity
{
	
}
