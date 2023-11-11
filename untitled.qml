/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the Моё приложение для ОС Аврора project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

ApplicationWindow{
    id: window
    Rectangle{ color: "white"; anchors.fill : parent }
    ColumnLayout{
        anchors.fill: parent
        spacing: 15
        HeaderAndFooter{
            RowLayout{
                anchors.fill: parent
                Box {
                    id: back; boxWidth: 0
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            back.width = 0
                            back.boxText = ""

                            header.comText = "Header"
                            center.boxText = "some content"

                            b1.boxColor = "light gray"
                            b2.boxColor = "light gray"
                            b3.boxColor = "light gray"

                            b1.boxTextColor = "black"
                            b2.boxTextColor = "black"
                            b3.boxTextColor = "black"
                        }
                    }
                }
                TextInCenter{ id: header; comText: "Header" }
            }
        }
        Center{ id: center; boxText: "some content" }
        HeaderAndFooter{
            RowLayout{
                anchors.fill: parent
                spacing: 8
                Box{
                    id: b1; boxText: "1"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            back.width = window.width / 4
                            back.boxText = "<-"
                            header.comText = "Header 1"
                            center.boxText = "item 1 content"

                            b1.boxColor = "light gray"
                            b1.boxTextColor = "black"

                            b2.boxColor = "gainsboro"
                            b3.boxColor = "gainsboro"
                            b2.boxTextColor = "silver"
                            b3.boxTextColor = "silver"
                        }
                    }
                }
                Box{
                    id: b2; boxText: "2"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            back.width = window.width / 4
                            back.boxText = "<-"
                            header.comText = "Header 2"
                            center.boxText = "item 2 content"

                            b2.boxColor = "light gray"
                            b2.boxTextColor = "black"

                            b1.boxColor = "gainsboro"
                            b3.boxColor = "gainsboro"
                            b1.boxTextColor = "silver"
                            b3.boxTextColor = "silver"
                        }
                    }
                }
                Box{
                    id: b3; boxText: "3"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            back.width = window.width / 4
                            back.boxText = "<-"
                            header.comText = "Header 3"
                            center.boxText = "item 3 content"

                            b3.boxColor = "light gray"
                            b3.boxTextColor = "black"

                            b1.boxColor = "gainsboro"
                            b2.boxColor = "gainsboro"
                            b1.boxTextColor = "silver"
                            b2.boxTextColor = "silver"
                        }
                    }
                }
            }
        }
    }
}
