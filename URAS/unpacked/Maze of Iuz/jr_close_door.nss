// Close door 10 seconds after being opened
void main()
{
  DelayCommand(10.0, ActionCloseDoor(OBJECT_SELF));
}
