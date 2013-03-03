package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMXMLSignatureFactory.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMXMLSignatureFactory extends javax.xml.crypto.dsig.XMLSignatureFactory
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function newXMLSignature(si : javax.xml.crypto.dsig.SignedInfo, ki : javax.xml.crypto.dsig.keyinfo.KeyInfo) : javax.xml.crypto.dsig.XMLSignature;
	
	@:overload @:public override public function newXMLSignature(si : javax.xml.crypto.dsig.SignedInfo, ki : javax.xml.crypto.dsig.keyinfo.KeyInfo, objects : java.util.List<Dynamic>, id : String, signatureValueId : String) : javax.xml.crypto.dsig.XMLSignature;
	
	@:overload @:public override public function newReference(uri : String, dm : javax.xml.crypto.dsig.DigestMethod) : javax.xml.crypto.dsig.Reference;
	
	@:overload @:public override public function newReference(uri : String, dm : javax.xml.crypto.dsig.DigestMethod, transforms : java.util.List<Dynamic>, type : String, id : String) : javax.xml.crypto.dsig.Reference;
	
	@:overload @:public override public function newReference(uri : String, dm : javax.xml.crypto.dsig.DigestMethod, appliedTransforms : java.util.List<Dynamic>, result : javax.xml.crypto.Data, transforms : java.util.List<Dynamic>, type : String, id : String) : javax.xml.crypto.dsig.Reference;
	
	@:overload @:public override public function newReference(uri : String, dm : javax.xml.crypto.dsig.DigestMethod, transforms : java.util.List<Dynamic>, type : String, id : String, digestValue : java.NativeArray<java.StdTypes.Int8>) : javax.xml.crypto.dsig.Reference;
	
	@:overload @:public override public function newSignedInfo(cm : javax.xml.crypto.dsig.CanonicalizationMethod, sm : javax.xml.crypto.dsig.SignatureMethod, references : java.util.List<Dynamic>) : javax.xml.crypto.dsig.SignedInfo;
	
	@:overload @:public override public function newSignedInfo(cm : javax.xml.crypto.dsig.CanonicalizationMethod, sm : javax.xml.crypto.dsig.SignatureMethod, references : java.util.List<Dynamic>, id : String) : javax.xml.crypto.dsig.SignedInfo;
	
	@:overload @:public override public function newXMLObject(content : java.util.List<Dynamic>, id : String, mimeType : String, encoding : String) : javax.xml.crypto.dsig.XMLObject;
	
	@:overload @:public override public function newManifest(references : java.util.List<Dynamic>) : javax.xml.crypto.dsig.Manifest;
	
	@:overload @:public override public function newManifest(references : java.util.List<Dynamic>, id : String) : javax.xml.crypto.dsig.Manifest;
	
	@:overload @:public override public function newSignatureProperties(props : java.util.List<Dynamic>, id : String) : javax.xml.crypto.dsig.SignatureProperties;
	
	@:overload @:public override public function newSignatureProperty(info : java.util.List<Dynamic>, target : String, id : String) : javax.xml.crypto.dsig.SignatureProperty;
	
	@:overload @:public override public function unmarshalXMLSignature(context : javax.xml.crypto.dsig.XMLValidateContext) : javax.xml.crypto.dsig.XMLSignature;
	
	@:overload @:public override public function unmarshalXMLSignature(xmlStructure : javax.xml.crypto.XMLStructure) : javax.xml.crypto.dsig.XMLSignature;
	
	@:overload @:public override public function isFeatureSupported(feature : String) : Bool;
	
	@:overload @:public override public function newDigestMethod(algorithm : String, params : javax.xml.crypto.dsig.spec.DigestMethodParameterSpec) : javax.xml.crypto.dsig.DigestMethod;
	
	@:overload @:public override public function newSignatureMethod(algorithm : String, params : javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec) : javax.xml.crypto.dsig.SignatureMethod;
	
	@:overload @:public override public function newTransform(algorithm : String, params : javax.xml.crypto.dsig.spec.TransformParameterSpec) : javax.xml.crypto.dsig.Transform;
	
	@:overload @:public override public function newTransform(algorithm : String, params : javax.xml.crypto.XMLStructure) : javax.xml.crypto.dsig.Transform;
	
	@:overload @:public override public function newCanonicalizationMethod(algorithm : String, params : javax.xml.crypto.dsig.spec.C14NMethodParameterSpec) : javax.xml.crypto.dsig.CanonicalizationMethod;
	
	@:overload @:public override public function newCanonicalizationMethod(algorithm : String, params : javax.xml.crypto.XMLStructure) : javax.xml.crypto.dsig.CanonicalizationMethod;
	
	@:overload @:public override public function getURIDereferencer() : javax.xml.crypto.URIDereferencer;
	
	
}
