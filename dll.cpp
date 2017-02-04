#include <sstream>

#include <dll.hpp>

std::string dll_do_stuff(void)
{
  std::stringstream ss;
  ss << "Spec:" << "\n";

  return ss.str();;
}
