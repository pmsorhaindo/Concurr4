-- This file is simple_io.ads
-- Version of March 1995
with Ada.Text_io;
package Simple_io is

  package Integer_io is new Ada.Text_io.Integer_io (Integer);
  package Float_io   is new Ada.Text_io.Float_io (Float);

  subtype File_type      is Ada.Text_io.File_type;
  subtype File_mode      is Ada.Text_io.File_mode;
  subtype Count          is Ada.Text_io.Count;
  subtype Positive_count is Ada.Text_io.Positive_count;
  subtype Field          is Ada.Text_io.Field;
  subtype Number_base    is Ada.Text_io.Number_base;

  IN_FILE:     CONSTANT File_mode := Ada.Text_io.IN_FILE;
  out_FILE:    CONSTANT File_mode := Ada.Text_io.out_FILE;
  APPend_FILE: CONSTANT File_mode := Ada.Text_io.APPend_FILE;

  -- File management

  procedure create  ( file : in out File_type;
                      mode : in File_mode := out_file;
                      name : in String := "";
                      form : in String := "" )
                             renames Ada.Text_io.create;
  procedure open    ( file : in out File_type;
                      mode : in File_mode;
                      name : in String;
                      form : in String := "" )
                             renames Ada.Text_io.open;
  procedure close   ( file : in out File_type )
                             renames Ada.Text_io.close;

  -- Character I/O:

  procedure get     ( item : out character )
                             renames Ada.Text_io.get;
  procedure put     ( item : in character )
                             renames Ada.Text_io.put;
  procedure get     ( file : in File_type;
                      item : out character )
                             renames Ada.Text_io.get;
  procedure put     ( file : in File_type;
                      item : in character )
                             renames Ada.Text_io.put;

  -- String I/O:

  procedure get     ( item : out String )
                             renames Ada.Text_io.get;
  procedure get_line( item : out String;
                      last : out Natural )
                             renames Ada.Text_io.get_line;
  procedure put     ( item : in String )
                             renames Ada.Text_io.put;
  procedure put_line( item : in String )
                             renames Ada.Text_io.put_line;
  procedure get     ( file : in File_type;
                      item : out String )
                             renames Ada.Text_io.get;
  procedure get_line( file : in File_type;
                      item : out String;
                      last : out Natural )
                             renames Ada.Text_io.get_line;
  procedure put     ( file : in File_type;
                      item : in String )
                             renames Ada.Text_io.put;
  procedure put_line( file : in File_type;
                      item : in String )
                             renames Ada.Text_io.put_line;

  -- Integer I/O:

  procedure get     ( item : out Integer;
                      width: in Field := 0 )
                             renames Integer_io.get;
  procedure put     ( item : in Integer;
                      width: in Field := Integer'width;
                      base : in Number_base := 10 )
                             renames Integer_io.put;
  procedure get     ( file : in File_type;
                      item : out Integer;
                      width: in Field := 0 )
                             renames Integer_io.get;
  procedure put     ( file : in File_type;
                      item : in Integer;
                      width: in Field := Integer'width;
                      base : in Number_base := 10 )
                             renames Integer_io.put;
  procedure get     ( from : in String;
                      item : out Integer;
                      last : out Positive )
                             renames Integer_io.get;
  procedure put     ( to   : out String;
                      item : in Integer;
                      base : in Number_base := 10 )
                             renames Integer_io.put;

  -- Floating point I/O:

  procedure get     ( item : out Float;
                      width: in Field := 0 )
                             renames Float_io.get;
  procedure put     ( item : in Float;
                      fore : in Field := 2;
                      aft  : in Field := Float'digits-1;
                      exp  : in Field := 3 )
                             renames Float_io.put;
  procedure get     ( from : in String;
                      item : out Float;
                      last : out Positive )
                             renames Float_io.get;
  procedure put     ( to   : out String;
                      item : in Float;
                      aft  : in Field := Float'digits-1;
                      exp  : in Field := 3 )
                             renames Float_io.put;
  procedure get     ( file : in File_type;
                      item : out Float;
                      width: in Field := 0 )
                             renames Float_io.get;
  procedure put     ( file : in File_type;
                      item : in Float;
                      fore : in Field := 2;
                      aft  : in Field := Float'digits-1;
                      exp  : in Field := 3 )
                             renames Float_io.put;

  -- Cursor control

  function  end_of_file return boolean
                         renames Ada.Text_io.end_of_file;
  function  end_of_line return boolean
                         renames Ada.Text_io.end_of_line;
  procedure new_line    (spacing: in Positive_count := 1)
                         renames Ada.Text_io.new_line;
  procedure skip_line   (spacing: in Positive_count := 1)
                         renames Ada.Text_io.skip_line;
  function  end_of_file (file: in File_type) return boolean
                         renames Ada.Text_io.end_of_file;
  function  end_of_line (file: in File_type) return boolean
                         renames Ada.Text_io.end_of_line;
  procedure new_line    (file: in File_type;
                         spacing: in Positive_count := 1)
                         renames Ada.Text_io.new_line;
  procedure skip_line   (file: in File_type;
                         spacing: in Positive_count := 1)
                         renames Ada.Text_io.skip_line;

  -- i/o exceptions

  Status_error:  exception renames Ada.Text_io.Status_error;
  Mode_error:    exception renames Ada.Text_io.Mode_error;
  Name_error:    exception renames Ada.Text_io.Name_error;
  Use_error:     exception renames Ada.Text_io.Use_error;
  Device_error:  exception renames Ada.Text_io.Device_error;
  End_error:     exception renames Ada.Text_io.End_error;
  Data_error:    exception renames Ada.Text_io.Data_error;
  Layout_error:  exception renames Ada.Text_io.Layout_error;

end Simple_io;
