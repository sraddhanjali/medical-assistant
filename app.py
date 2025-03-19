from transformers import pipeline
import gradio as gradio

model = pipelin("summarization")

def predict(prompt):
    summary = model(prompt)[0]["summary_text"]
    return summary

with gr.Blocks() as demo:
    textbox = gr.TextBox(placeholder="Enter text block to summarize", lines=4)
    gr.Interface(fn=predict, inputs=textbox, outputs="text")

demo.launch()
