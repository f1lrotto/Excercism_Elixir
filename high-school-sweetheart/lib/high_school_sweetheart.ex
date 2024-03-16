defmodule HighSchoolSweetheart do
  def first_letter(name) do
      String.at(String.trim(name), 0)
  end

  def initial(name) do
   String.capitalize("#{first_letter(name)}.")
  end

  def initials(full_name) do
    name_split = String.split(full_name)
    "#{initial(Enum.at(name_split, 0))} #{initial(Enum.at(name_split, 1))}"
  end

  def pair(full_name1, full_name2) do
    #      ******       ******
    #    **      **   **      **
    #  **         ** **         **
    # **            *            **
    # **                         **
    # **     X. X.  +  X. X.     **
    #  **                       **
    #    **                   **
    #      **               **
    #        **           **
    #          **       **
    #            **   **
    #              ***
    #               *

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
