# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-18T12:41:47.357Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.369.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.369.0/nikcli-ai-darwin-x64.zip"
      sha256 "c1e44c9d4459a994468f1ab380734ec0349dd4707456543714d6b271b6656508"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.369.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4e5584051ae0976f83006ddf43ba0d5be2be99cdbaf3919a1653191256b15029"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.369.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4becf39458735d6fd65ad52986c154ca9c4db434018bd7ac12e76dcb859004f3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.369.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b9566e86dd91ff0accd92136463f4ba5802d91dd3deaf3827b8e6e7d69dba261"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

