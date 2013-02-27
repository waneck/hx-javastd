package sun.security.tools.policytool;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyTool
{
	/**
	* run the PolicyTool
	*/
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:internal extern class PolicyEntry
{
	
}
@:internal extern class ToolWindow extends java.awt.Frame
{
	/* external paddings */
	public static var TOP_PADDING(default, null) : java.awt.Insets;
	
	public static var BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	public static var LITE_BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	public static var LR_PADDING(default, null) : java.awt.Insets;
	
	public static var TOP_BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	public static var L_TOP_BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	public static var LR_BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	public static var L_BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	public static var R_BOTTOM_PADDING(default, null) : java.awt.Insets;
	
	/* buttons and menus */
	public static var NEW_POLICY_FILE(default, null) : String;
	
	public static var OPEN_POLICY_FILE(default, null) : String;
	
	public static var SAVE_POLICY_FILE(default, null) : String;
	
	public static var SAVE_AS_POLICY_FILE(default, null) : String;
	
	public static var VIEW_WARNINGS(default, null) : String;
	
	public static var QUIT(default, null) : String;
	
	public static var ADD_POLICY_ENTRY(default, null) : String;
	
	public static var EDIT_POLICY_ENTRY(default, null) : String;
	
	public static var REMOVE_POLICY_ENTRY(default, null) : String;
	
	public static var EDIT_KEYSTORE(default, null) : String;
	
	public static var ADD_PUBKEY_ALIAS(default, null) : String;
	
	public static var REMOVE_PUBKEY_ALIAS(default, null) : String;
	
	/* gridbag index for components in the main window (MW) */
	public static var MW_FILENAME_LABEL(default, null) : Int;
	
	public static var MW_FILENAME_TEXTFIELD(default, null) : Int;
	
	public static var MW_PANEL(default, null) : Int;
	
	public static var MW_ADD_BUTTON(default, null) : Int;
	
	public static var MW_EDIT_BUTTON(default, null) : Int;
	
	public static var MW_REMOVE_BUTTON(default, null) : Int;
	
	public static var MW_POLICY_LIST(default, null) : Int;
	
	
}
@:internal extern class ToolDialog extends java.awt.Dialog
{
	/* necessary constants */
	public static var NOACTION(default, null) : Int;
	
	public static var QUIT(default, null) : Int;
	
	public static var NEW(default, null) : Int;
	
	public static var OPEN(default, null) : Int;
	
	public static var ALL_PERM_CLASS(default, null) : String;
	
	public static var FILE_PERM_CLASS(default, null) : String;
	
	public static var X500_PRIN_CLASS(default, null) : String;
	
	/* popup menus */
	public static var PERM(default, null) : String;
	
	public static var PRIN_TYPE(default, null) : String;
	
	public static var PRIN_NAME(default, null) : String;
	
	/* more popu menus */
	public static var PERM_NAME(default, null) : String;
	
	/* and more popup menus */
	public static var PERM_ACTIONS(default, null) : String;
	
	/* gridbag index for display PolicyEntry (PE) components */
	public static var PE_CODEBASE_LABEL(default, null) : Int;
	
	public static var PE_CODEBASE_TEXTFIELD(default, null) : Int;
	
	public static var PE_SIGNEDBY_LABEL(default, null) : Int;
	
	public static var PE_SIGNEDBY_TEXTFIELD(default, null) : Int;
	
	public static var PE_PANEL0(default, null) : Int;
	
	public static var PE_ADD_PRIN_BUTTON(default, null) : Int;
	
	public static var PE_EDIT_PRIN_BUTTON(default, null) : Int;
	
	public static var PE_REMOVE_PRIN_BUTTON(default, null) : Int;
	
	public static var PE_PRIN_LABEL(default, null) : Int;
	
	public static var PE_PRIN_LIST(default, null) : Int;
	
	public static var PE_PANEL1(default, null) : Int;
	
	public static var PE_ADD_PERM_BUTTON(default, null) : Int;
	
	public static var PE_EDIT_PERM_BUTTON(default, null) : Int;
	
	public static var PE_REMOVE_PERM_BUTTON(default, null) : Int;
	
	public static var PE_PERM_LIST(default, null) : Int;
	
	public static var PE_PANEL2(default, null) : Int;
	
	public static var PE_CANCEL_BUTTON(default, null) : Int;
	
	public static var PE_DONE_BUTTON(default, null) : Int;
	
	/* the gridbag index for components in the Principal Dialog (PRD) */
	public static var PRD_DESC_LABEL(default, null) : Int;
	
	public static var PRD_PRIN_CHOICE(default, null) : Int;
	
	public static var PRD_PRIN_TEXTFIELD(default, null) : Int;
	
	public static var PRD_NAME_LABEL(default, null) : Int;
	
	public static var PRD_NAME_TEXTFIELD(default, null) : Int;
	
	public static var PRD_CANCEL_BUTTON(default, null) : Int;
	
	public static var PRD_OK_BUTTON(default, null) : Int;
	
	/* the gridbag index for components in the Permission Dialog (PD) */
	public static var PD_DESC_LABEL(default, null) : Int;
	
	public static var PD_PERM_CHOICE(default, null) : Int;
	
	public static var PD_PERM_TEXTFIELD(default, null) : Int;
	
	public static var PD_NAME_CHOICE(default, null) : Int;
	
	public static var PD_NAME_TEXTFIELD(default, null) : Int;
	
	public static var PD_ACTIONS_CHOICE(default, null) : Int;
	
	public static var PD_ACTIONS_TEXTFIELD(default, null) : Int;
	
	public static var PD_SIGNEDBY_LABEL(default, null) : Int;
	
	public static var PD_SIGNEDBY_TEXTFIELD(default, null) : Int;
	
	public static var PD_CANCEL_BUTTON(default, null) : Int;
	
	public static var PD_OK_BUTTON(default, null) : Int;
	
	/* modes for KeyStore */
	public static var EDIT_KEYSTORE(default, null) : Int;
	
	/* the gridbag index for components in the Change KeyStore Dialog (KSD) */
	public static var KSD_NAME_LABEL(default, null) : Int;
	
	public static var KSD_NAME_TEXTFIELD(default, null) : Int;
	
	public static var KSD_TYPE_LABEL(default, null) : Int;
	
	public static var KSD_TYPE_TEXTFIELD(default, null) : Int;
	
	public static var KSD_PROVIDER_LABEL(default, null) : Int;
	
	public static var KSD_PROVIDER_TEXTFIELD(default, null) : Int;
	
	public static var KSD_PWD_URL_LABEL(default, null) : Int;
	
	public static var KSD_PWD_URL_TEXTFIELD(default, null) : Int;
	
	public static var KSD_CANCEL_BUTTON(default, null) : Int;
	
	public static var KSD_OK_BUTTON(default, null) : Int;
	
	/* the gridbag index for components in the User Save Changes Dialog (USC) */
	public static var USC_LABEL(default, null) : Int;
	
	public static var USC_PANEL(default, null) : Int;
	
	public static var USC_YES_BUTTON(default, null) : Int;
	
	public static var USC_NO_BUTTON(default, null) : Int;
	
	public static var USC_CANCEL_BUTTON(default, null) : Int;
	
	/* gridbag index for the ConfirmRemovePolicyEntryDialog (CRPE) */
	public static var CRPE_LABEL1(default, null) : Int;
	
	public static var CRPE_LABEL2(default, null) : Int;
	
	public static var CRPE_PANEL(default, null) : Int;
	
	public static var CRPE_PANEL_OK(default, null) : Int;
	
	public static var CRPE_PANEL_CANCEL(default, null) : Int;
	
	public static var PERM_ARRAY : java.util.ArrayList<Perm>;
	
	public static var PRIN_ARRAY : java.util.ArrayList<Prin>;
	
	
}
@:internal extern class ToolWindowListener implements java.awt.event.WindowListener
{
	@:overload public function windowOpened(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowClosing(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowClosed(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowIconified(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowDeiconified(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowActivated(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowDeactivated(we : java.awt.event.WindowEvent) : Void;
	
	
}
@:internal extern class PolicyListListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class FileMenuListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class MainWindowListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class AddEntryDoneButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class ChangeKeyStoreOKButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class AddPrinButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class AddPermButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class NewPolicyPrinOKButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class NewPolicyPermOKButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class RemovePrinButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class RemovePermButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class EditPrinButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class EditPermButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class PrincipalTypeMenuListener implements java.awt.event.ItemListener
{
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
@:internal extern class PermissionMenuListener implements java.awt.event.ItemListener
{
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
@:internal extern class PermissionNameMenuListener implements java.awt.event.ItemListener
{
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
@:internal extern class PermissionActionsMenuListener implements java.awt.event.ItemListener
{
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}
@:internal extern class ChildWindowListener implements java.awt.event.WindowListener
{
	@:overload public function windowOpened(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowClosing(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowClosed(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowIconified(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowDeiconified(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowActivated(we : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowDeactivated(we : java.awt.event.WindowEvent) : Void;
	
	
}
@:internal extern class CancelButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class ErrorOKButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class StatusOKButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class UserSaveYesButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class UserSaveNoButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class UserSaveCancelButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class ConfirmRemovePolicyEntryOKButtonListener implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:internal extern class NoDisplayException extends java.lang.RuntimeException
{
	
}
@:internal extern class TaggedList extends java.awt.List
{
	@:overload public function new(i : Int, b : Bool) : Void;
	
	@:overload public function getObject(index : Int) : Dynamic;
	
	@:overload override public function add(string : String) : Void;
	
	@:overload public function addTaggedItem(string : String, object : Dynamic) : Void;
	
	@:overload override public function replaceItem(string : String, index : Int) : Void;
	
	@:overload public function replaceTaggedItem(string : String, object : Dynamic, index : Int) : Void;
	
	@:overload override public function remove(index : Int) : Void;
	
	@:overload public function removeTaggedItem(index : Int) : Void;
	
	
}
@:internal extern class Prin
{
	/**
	* Convenience Principal Classes
	*/
	public var CLASS(default, null) : String;
	
	public var FULL_CLASS(default, null) : String;
	
	@:overload public function new(clazz : String, fullClass : String) : Void;
	
	
}
@:internal extern class KrbPrin extends Prin
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class X500Prin extends Prin
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class Perm
{
	/**
	* Convenience Permission Classes
	*/
	public var CLASS(default, null) : String;
	
	public var FULL_CLASS(default, null) : String;
	
	public var TARGETS(default, null) : java.NativeArray<String>;
	
	public var ACTIONS(default, null) : java.NativeArray<String>;
	
	@:overload public function new(clazz : String, fullClass : String, targets : java.NativeArray<String>, actions : java.NativeArray<String>) : Void;
	
	
}
@:internal extern class AllPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class AudioPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class AuthPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class AWTPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class DelegationPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class FilePerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class InqSecContextPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class LogPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class MgmtPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class MBeanPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class MBeanSvrPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class MBeanTrustPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class NetPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class PrivCredPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class PropPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class ReflectPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class RuntimePerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class SecurityPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class SerialPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class ServicePerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class SocketPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class SQLPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class SSLPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
@:internal extern class SubjDelegPerm extends Perm
{
	@:overload public function new() : Void;
	
	
}
