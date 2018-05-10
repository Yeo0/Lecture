import wx
import generator_wx
import matplotlib 
matplotlib.use('WXAgg') 
from matplotlib.figure import Figure as fig 
import numpy as np
from matplotlib.backends.backend_wxagg import FigureCanvasWxAgg 
from matplotlib.backends.backend_wxagg import NavigationToolbar2WxAgg

class frame(generator_wx.MyFrame):
   def __init__(self, *args, **kwds):
      generator_wx.MyFrame.__init__(self, *args, **kwds)
      self.InitFigure()

   # App functions
   def InitFigure(self):
        self.dpi = 100 
        self.Figure = fig((5.0, 4.0), dpi=self.dpi) 
        self.Canvas = FigureCanvasWxAgg(self.panel_1, wx.ID_ANY, self.Figure) 
        self.axes = self.Figure.add_subplot(111) 
        self.PlotToolbar = NavigationToolbar2WxAgg(self.Canvas) 
        self.panel_1.GetSizer().Add(self.Canvas, 1, flag=wx.ALL|wx.EXPAND) 
        self.panel_1.GetSizer().Add(self.PlotToolbar, 0, wx.EXPAND) 

   def draw(self):
      self.axes.clear() 
      self.axes.grid(True)
      self.axes.plot(self.time,self.data) 
      self.Canvas.draw() 
      self.Canvas.Refresh()      

   # Events
   def save(self, event): 
      saveFile = wx.FileDialog(self, "Save as", "", "", "CSV file(*.csv)|*.csv", wx.FD_SAVE)      
      result = saveFile.ShowModal()

      if result == wx.ID_CANCEL:
         return
      else:
         print(saveFile.GetPath())
      
      event.Skip()

      
   def generate(self, event): 
      try:
         frequency = float(self.text_ctrl_frequency.GetValue())
      except:
         dialog = wx.MessageDialog(self, "Frequency has to be number.", caption="Frequency value error",
                                style=wx.ICON_ERROR|wx.OK|wx.CENTRE, pos=wx.DefaultPosition)
         dialog.ShowModal()
         return
      
      start_time = float(self.text_ctrl_start.GetValue())
      end_time = float(self.text_ctrl_end.GetValue())
      sampling = float(self.text_ctrl_sampling.GetValue())
      
      self.time = np.arange(start_time, end_time, sampling)
      self.data = np.sin(frequency*self.time)
      self.draw()
      event.Skip()

   def quit(self, event): 
      self.Close()
      event.Skip()

if __name__ == "__main__":
    app = wx.PySimpleApp(0)
    wx.InitAllImageHandlers()
    frame_1 = frame(None, wx.ID_ANY, "")
    app.SetTopWindow(frame_1)
    frame_1.Show()
    app.MainLoop()


